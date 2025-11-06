/* =========================================================
   TALLER CLASE 10 — SOLUCIONES SQL (sin COALESCE ni EXTRACT)
   Esquema: Sala, Pelicula, Persona, Cliente, Empleado,
            Funcion, Funcion_Especial, Entrada
   ========================================================= */

/* -------------------------
   P1) Total de películas
   ------------------------- */
-- Devuelve un único valor con la cantidad total de películas.
SELECT COUNT(*) AS total_peliculas
FROM Pelicula;

/* -----------------------------------------------
   P2) Promedio de duración de películas chilenas
   ----------------------------------------------- */
-- Devuelve un único valor con el promedio de duración para país 'Chile'.
SELECT AVG(duracion) AS promedio_duracion_chile
FROM Pelicula
WHERE pais_origen = 'Chile';

/* -----------------------------------------------
   P3) Salas y capacidad (ordenadas por capacidad)
   ----------------------------------------------- */
-- Lista id_sala, capacidad y formato, ordenado de mayor a menor capacidad.
SELECT id_sala, capacidad, formato
FROM Sala
ORDER BY capacidad DESC, id_sala ASC;

/* ---------------------------------------------------------
   P4) Cantidad total de funciones programadas por sala
   --------------------------------------------------------- */
SELECT s.id_sala, COUNT(f.id_funcion) AS total_funciones
FROM Sala s
LEFT JOIN Funcion f
  ON f.id_sala = s.id_sala
GROUP BY s.id_sala
ORDER BY total_funciones DESC, s.id_sala ASC;

/* ---------------------------------------------------------
   P5) Entradas vendidas por sala
   --------------------------------------------------------- */
SELECT s.id_sala, COUNT(e.id_entrada) AS total_entradas
FROM Sala s
LEFT JOIN Funcion f
  ON f.id_sala = s.id_sala
LEFT JOIN Entrada e
  ON e.id_funcion = f.id_funcion
GROUP BY s.id_sala
ORDER BY total_entradas DESC, s.id_sala ASC;

/* -------------------------------------------------------------------
   P6) Funciones por película (incluyendo las que no se han exhibido)
   ------------------------------------------------------------------- */
-- Devuelve código, título y cantidad de funciones (0 si no tiene).
SELECT p.codigo_pelicula,
       p.titulo,
       COUNT(f.id_funcion) AS funciones_exhibidas
FROM Pelicula p
LEFT JOIN Funcion f
  ON f.codigo_pelicula = p.codigo_pelicula
GROUP BY p.codigo_pelicula, p.titulo
ORDER BY funciones_exhibidas DESC, p.titulo ASC;

/* ---------------------------------------------------------
   P7) Precio promedio por formato de sala
   --------------------------------------------------------- */
-- Calcula el promedio de precio de entradas vendidas, agrupado por formato.
SELECT s.formato,
       AVG(e.precio) AS precio_promedio
FROM Entrada e
JOIN Funcion f
  ON f.id_funcion = e.id_funcion
JOIN Sala s
  ON s.id_sala = f.id_sala
GROUP BY s.formato
ORDER BY s.formato ASC;

/* ---------------------------------------------------------
   P8) Total de entradas vendidas por empleado
   --------------------------------------------------------- */
-- Muestra el RUT, nombre y cantidad de entradas vendidas por cada empleado.
-- Si el empleado no ha vendido entradas, el total será 0.
SELECT pe.rut,
       pe.nombre,
       COUNT(e.id_entrada) AS total_vendidas
FROM Empleado em
JOIN Persona pe
  ON pe.rut = em.rut
LEFT JOIN Entrada e
  ON e.rut_empleado = em.rut
GROUP BY pe.rut, pe.nombre
ORDER BY pe.rut ASC;
/* ---------------------------------------------------------
   P9) Clientes que nunca han comprado entradas
   --------------------------------------------------------- */
-- Devuelve RUT, nombre y fecha de registro de clientes sin entradas.
SELECT c.rut,
       pe.nombre,
       c.fecha_registro
FROM Cliente c
JOIN Persona pe
  ON pe.rut = c.rut
LEFT JOIN Entrada e
  ON e.rut_cliente = c.rut
WHERE e.id_entrada IS NULL;

/* ---------------------------------------------------------
   P10) Países de origen de películas sin funciones
   --------------------------------------------------------- */
-- Devuelve países (sin repetir) de películas no programadas en ninguna función.
SELECT DISTINCT p.pais_origen
FROM Pelicula p
LEFT JOIN Funcion f
  ON f.codigo_pelicula = p.codigo_pelicula
WHERE f.id_funcion IS NULL
ORDER BY p.pais_origen ASC;

/* ---------------------------------------------------------
   P11) Salas con alta demanda (> 50 entradas)
   --------------------------------------------------------- */
-- Devuelve id_sala, capacidad y total de entradas vendidas, solo si total > 30.
SELECT s.id_sala,
       s.capacidad,
       COUNT(e.id_entrada) AS total_entradas
FROM Sala s
LEFT JOIN Funcion f
  ON f.id_sala = s.id_sala
LEFT JOIN Entrada e
  ON e.id_funcion = f.id_funcion
GROUP BY s.id_sala, s.capacidad
HAVING COUNT(e.id_entrada) > 30
ORDER BY total_entradas DESC, s.id_sala ASC;

/* ---------------------------------------------------------
   P12) Películas proyectadas en años con funciones especiales
   --------------------------------------------------------- */
-- Evita EXTRACT: compara por año usando DATE_TRUNC al inicio de año.
-- Devuelve películas (sin repetir) que se proyectaron en al menos un año
-- que también tuvo funciones especiales.
SELECT DISTINCT p.titulo,
       p.pais_origen
FROM Pelicula p
JOIN Funcion f
  ON f.codigo_pelicula = p.codigo_pelicula
WHERE DATE_TRUNC('year', f.fecha) IN (
  SELECT DISTINCT DATE_TRUNC('year', f2.fecha)
  FROM Funcion_Especial fe
  JOIN Funcion f2
    ON f2.id_funcion = fe.id_funcion
)
ORDER BY p.titulo ASC;