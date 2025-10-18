-- ========================
-- NIVEL 1: FUNCIONES BÁSICAS (sin agrupación)
-- Estas consultas muestran cómo obtener resúmenes globales de la tabla Paper.
-- Buenas prácticas:
--  • COUNT(*) cuenta todas las filas; COUNT(columna) ignora NULL.
--  • AVG/SUM/MIN/MAX ignoran NULL y requieren columnas numéricas (excepto MIN/MAX que aceptan comparables).
--  • Puedes combinar con WHERE para acotar el universo de filas antes de agregar.
-- ========================

-- Conteo global de papers en la base.
-- Útil para verificar el total de registros y como control de calidad de carga de datos.
SELECT COUNT(*) AS total_papers
FROM Paper;

-- Conteo condicionado: papers con exactamente 10 páginas.
-- Nota: El filtro va en WHERE (antes de agregar), por eso COUNT(*) solo cuenta las filas filtradas.
SELECT COUNT(*) AS papers_10_pag
FROM Paper
WHERE paginas = 10;

-- Promedio de años de publicación de todos los papers.
-- Si hay distribución muy amplia, considera acompañar con MIN/MAX para contexto.
SELECT AVG(anio) AS promedio_anio
FROM Paper;

-- Promedio de años solo para papers recientes (>= 2020).
-- El WHERE reduce el universo primero; luego AVG opera sobre ese subconjunto.
SELECT AVG(anio) AS promedio_reciente
FROM Paper
WHERE anio >= 2020;

-- Suma total de páginas de todos los papers.
-- Tip: Cambia a SUM(paginas) WHERE anio = 2024 para sumar por año específico.
SELECT SUM(paginas) AS total_paginas
FROM Paper;

-- Mínimo año entre los papers desde 2020 (el más antiguo dentro del rango reciente).
-- Útil para detectar el punto de inicio de una tendencia.
SELECT MIN(anio) AS primer_reciente
FROM Paper
WHERE anio >= 2020;

-- Máximo año de publicación (paper más reciente registrado).
-- Si quieres el título del más reciente, necesitarás JOIN + ORDER BY/LIMIT (no mostrado aquí).
SELECT MAX(anio) AS ultimo_paper
FROM Paper;


-- ========================
-- SUBCONSULTAS + JOIN
-- Suma de páginas de los papers publicados en la(s) conferencia(s) más antigua(s).
-- Patrón 1: subconsulta en WHERE con IN (soporta múltiples ids por empate de MIN(anio)).
-- Ventaja: Fácil de leer; la subconsulta define el conjunto objetivo.
SELECT SUM(p.paginas) AS total_paginas_conferencia_antigua
FROM Paper p
JOIN Publicado pub ON pub.paper_id = p.id
WHERE pub.conferencia_id IN (
  SELECT c.id
  FROM Conferencia c
  WHERE c.anio = (SELECT MIN(anio) FROM Conferencia)
);

-- Patrón 2: tabla derivada en JOIN.
-- Equivalente lógico al anterior, pero permite seleccionar más columnas de la conferencia si se requiere.
SELECT SUM(p.paginas) AS total_paginas_conferencia_antigua
FROM Paper p
JOIN Publicado pub ON pub.paper_id = p.id
JOIN (
  SELECT id
  FROM Conferencia
  WHERE anio = (SELECT MIN(anio) FROM Conferencia)
) cmin ON cmin.id = pub.conferencia_id;

-- Conteo de presentaciones (filas en Publicado) para conferencias con año por debajo del promedio.
-- La subconsulta escalar en WHERE calcula el AVG una vez; PostgreSQL puede materializarla.
-- Ojo: COUNT(*) aquí cuenta presentaciones, no papers únicos; un mismo paper en varias confs se cuenta varias veces.
SELECT COUNT(*) 
FROM Publicado pub
JOIN Conferencia c ON c.id = pub.conferencia_id
WHERE c.anio < (SELECT AVG(anio) FROM Conferencia);

-- ========================
-- NIVEL 2: GROUP BY / HAVING
-- Conteo de presentaciones por conferencia (clave: conferencia_id).
-- Regla: Toda columna no agregada debe aparecer en GROUP BY.
SELECT conferencia_id, COUNT(*) AS total_papers
FROM Publicado
GROUP BY conferencia_id;

-- Suma de páginas por conferencia: necesita JOIN a Paper para acceder a la columna paginas.
-- Patrón clásico: JOIN (para traer atributos), luego GROUP BY (para agregar por clave).
SELECT conferencia_id, SUM(paginas) AS total_paginas
FROM Publicado pub
JOIN Paper p ON p.id = pub.paper_id
GROUP BY conferencia_id;

-- Agrupación por múltiples columnas: (conferencia_id, anio del paper).
-- Cada par genera su propio grupo; útil para series temporales por conferencia.
SELECT conferencia_id, p.anio, COUNT(*) AS total_papers
FROM Paper p
JOIN Publicado pub ON pub.paper_id = p.id
GROUP BY conferencia_id, p.anio;


-- Uso de HAVING: filtra grupos después de agregar.
-- Muestra solo conferencias con más de 3 presentaciones.
-- Diferencia clave: WHERE filtra filas; HAVING filtra grupos.
SELECT conferencia_id, COUNT(*) AS total_papers
FROM Publicado
GROUP BY conferencia_id
HAVING COUNT(*) > 3;


-- Ejemplo combinado: WHERE + GROUP BY.
-- Primero filtramos papers recientes; luego contamos por conferencia (nombre legible en lugar de id).
SELECT c.nombre, COUNT(*) AS total_papers
FROM Conferencia c
JOIN Publicado pub ON pub.conferencia_id = c.id
JOIN Paper p ON p.id = pub.paper_id
WHERE p.anio >= 2020
GROUP BY c.nombre;


-- Añadimos HAVING para quedarnos con conferencias con al menos 3 papers recientes.
-- Orden de evaluación lógico: FROM/JOIN → WHERE → GROUP BY → HAVING → SELECT → ORDER BY.
SELECT c.nombre, COUNT(*) AS total_papers
FROM Conferencia c
JOIN Publicado pub ON pub.conferencia_id = c.id
JOIN Paper p ON p.id = pub.paper_id
WHERE p.anio >= 2020
GROUP BY c.nombre
HAVING COUNT(*) > 2;

-- ========================
-- NIVEL 3: OPERADORES DE CONJUNTO
-- Reglas: mismo número y tipo de columnas.
-- UNION elimina duplicados; los nombres de columnas vienen de la primera consulta.
SELECT columna1, columna2 FROM tablaA
UNION
SELECT columna1, columna2 FROM tablaB;

-- UNION entre años de Conferencia y Paper: lista de años únicos presentes en cualquiera de las tablas.
SELECT anio FROM Conferencia
UNION
SELECT anio FROM Paper;

-- UNION ALL mantiene duplicados: útil si necesitas contar ocurrencias totales (más rápido que UNION).
SELECT anio FROM Conferencia
UNION ALL
SELECT anio FROM Paper;


-- INTERSECT: años comunes en ambas tablas.
-- Útil para trabajar solo con períodos donde hay datos en ambas fuentes.
SELECT anio FROM Conferencia
INTERSECT
SELECT anio FROM Paper;

-- EXCEPT: años presentes en Paper que no aparecen en Conferencia.
-- Cambiar el orden invierte el sentido de la resta de conjuntos.
SELECT anio FROM Paper
EXCEPT
SELECT anio FROM Conferencia;


-- Combinación de operadores: (A ∪ B) − (A ∩ B)
-- Resultado: años exclusivos de una sola tabla (presentes en una pero no en ambas).
-- Los paréntesis aclaran la intención y evitan ambigüedades de precedencia.
(
  SELECT anio FROM Conferencia
  UNION
  SELECT anio FROM Paper
)
EXCEPT
(
  SELECT anio FROM Conferencia
  INTERSECT
  SELECT anio FROM Paper
);


-- Conjunto de años válidos para análisis cruzado
-- Definición: años que existen tanto en Conferencia como en Paper.
-- Este conjunto se reutiliza en varias subconsultas para acotar el período de análisis.
(SELECT anio FROM Conferencia
 INTERSECT
 SELECT anio FROM Paper)


-- Pares (autor, conferencia) derivados de presentaciones reales
-- Cada fila representa que un autor presentó (al menos) un paper en una conferencia dada.
-- Agrupamos por (autor_id, conferencia_id) para evitar multiplicitad por coautorías múltiples del mismo evento.
SELECT ad.autor_id, pub.conferencia_id
FROM Autor_De ad
JOIN Publicado pub ON pub.paper_id = ad.paper_id
GROUP BY ad.autor_id, pub.conferencia_id


-- Autores activos: aquellos que han estado en 2 o más conferencias distintas.
-- Patrón: primero generamos pares únicos (autor, conferencia); luego contamos por autor.
SELECT t.autor_id
FROM (
  SELECT ad.autor_id, pub.conferencia_id
  FROM Autor_De ad
  JOIN Publicado pub ON pub.paper_id = ad.paper_id
  GROUP BY ad.autor_id, pub.conferencia_id
) t
GROUP BY t.autor_id
HAVING COUNT(*) >= 2


-- Promedio global de "papers activos" por conferencia
-- Se calcula sobre el mismo universo de años válidos y autores activos.
-- Esta métrica sirve como umbral para comparar en HAVING más adelante.
SELECT AVG(sub.cnt_activos)
FROM (
  SELECT c2.id AS conf_id, COUNT(*) AS cnt_activos
  FROM Conferencia c2
  JOIN Publicado pub2 ON pub2.conferencia_id = c2.id
  JOIN Paper p2 ON p2.id = pub2.paper_id
  JOIN Autor_De ad2 ON ad2.paper_id = p2.id
  WHERE c2.anio IN (
    SELECT anio FROM Conferencia
    INTERSECT
    SELECT anio FROM Paper
  )
  AND ad2.autor_id IN (
    SELECT t.autor_id
    FROM (
      SELECT ad.autor_id, pub.conferencia_id
      FROM Autor_De ad
      JOIN Publicado pub ON pub.paper_id = ad.paper_id
      GROUP BY ad.autor_id, pub.conferencia_id
    ) t
    GROUP BY t.autor_id
    HAVING COUNT(*) >= 2
  )
  GROUP BY c2.id
) AS sub


-- Consulta integradora (Niveles 1, 2 y 3)
-- Objetivo: por conferencia, contar presentaciones de "papers activos" y sumar sus páginas,
-- usando solo años válidos y autores activos; luego filtrar por encima del promedio global.
-- Cubre: COUNT, SUM, GROUP BY, HAVING, subconsultas y operadores de conjunto (INTERSECT).
SELECT c.nombre,
       COUNT(*)          AS papers_activos,
       SUM(p.paginas)    AS total_paginas
FROM Conferencia c
JOIN Publicado pub ON pub.conferencia_id = c.id
JOIN Paper p       ON p.id = pub.paper_id
JOIN Autor_De ad   ON ad.paper_id = p.id
WHERE c.anio IN (
  SELECT anio FROM Conferencia
  INTERSECT
  SELECT anio FROM Paper
)
AND ad.autor_id IN (
  SELECT t.autor_id
  FROM (
    SELECT ad.autor_id, pub.conferencia_id
    FROM Autor_De ad
    JOIN Publicado pub ON pub.paper_id = ad.paper_id
    GROUP BY ad.autor_id, pub.conferencia_id
  ) t
  GROUP BY t.autor_id
  HAVING COUNT(*) >= 2
)
GROUP BY c.nombre
HAVING COUNT(*) > (
  SELECT AVG(sub.cnt_activos)
  FROM (
    SELECT c2.id AS conf_id, COUNT(*) AS cnt_activos
    FROM Conferencia c2
    JOIN Publicado pub2 ON pub2.conferencia_id = c2.id
    JOIN Paper p2       ON p2.id = pub2.paper_id
    JOIN Autor_De ad2   ON ad2.paper_id = p2.id
    WHERE c2.anio IN (
      SELECT anio FROM Conferencia
      INTERSECT
      SELECT anio FROM Paper
    )
    AND ad2.autor_id IN (
      SELECT t2.autor_id
      FROM (
        SELECT ad3.autor_id, pub3.conferencia_id
        FROM Autor_De ad3
        JOIN Publicado pub3 ON pub3.paper_id = ad3.paper_id
        GROUP BY ad3.autor_id, pub3.conferencia_id
      ) t2
      GROUP BY t2.autor_id
      HAVING COUNT(*) >= 2
    )
    GROUP BY c2.id
  ) sub
)
ORDER BY total_paginas DESC;

-- FIN DEL SCRIPT DE CLASE 10
-- Sugerencias para practicar:
--  • Cambia filtros de años (>=, <=) y observa impacto.
--  • Reemplaza INTERSECT por EXCEPT/UNION para responder otras preguntas.
--  • Compara resultados con y sin autores activos.