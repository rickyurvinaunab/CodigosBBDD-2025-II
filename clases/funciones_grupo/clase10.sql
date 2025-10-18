SELECT COUNT(*) AS total_papers
FROM Paper;

SELECT COUNT(*) AS papers_10_pag
FROM Paper
WHERE paginas = 10;

SELECT AVG(anio) AS promedio_anio
FROM Paper;

SELECT AVG(anio) AS promedio_reciente
FROM Paper
WHERE anio >= 2020;

SELECT SUM(paginas) AS total_paginas
FROM Paper;

SELECT MIN(anio) AS primer_reciente
FROM Paper
WHERE anio >= 2020;

SELECT MAX(anio) AS ultimo_paper
FROM Paper;


SELECT SUM(p.paginas) AS total_paginas_conferencia_antigua
FROM Paper p
JOIN Publicado pub ON pub.paper_id = p.id
WHERE pub.conferencia_id IN (
  SELECT c.id
  FROM Conferencia c
  WHERE c.anio = (SELECT MIN(anio) FROM Conferencia)
);

SELECT SUM(p.paginas) AS total_paginas_conferencia_antigua
FROM Paper p
JOIN Publicado pub ON pub.paper_id = p.id
JOIN (
  SELECT id
  FROM Conferencia
  WHERE anio = (SELECT MIN(anio) FROM Conferencia)
) cmin ON cmin.id = pub.conferencia_id;

SELECT COUNT(*) 
FROM Publicado pub
JOIN Conferencia c ON c.id = pub.conferencia_id
WHERE c.anio < (SELECT AVG(anio) FROM Conferencia);

SELECT conferencia_id, COUNT(*) AS total_papers
FROM Publicado
GROUP BY conferencia_id;

SELECT conferencia_id, SUM(paginas) AS total_paginas
FROM Publicado pub
JOIN Paper p ON p.id = pub.paper_id
GROUP BY conferencia_id;

SELECT conferencia_id, p.anio, COUNT(*) AS total_papers
FROM Paper p
JOIN Publicado pub ON pub.paper_id = p.id
GROUP BY conferencia_id, p.anio;


SELECT conferencia_id, COUNT(*) AS total_papers
FROM Publicado
GROUP BY conferencia_id
HAVING COUNT(*) > 3;


SELECT c.nombre, COUNT(*) AS total_papers
FROM Conferencia c
JOIN Publicado pub ON pub.conferencia_id = c.id
JOIN Paper p ON p.id = pub.paper_id
WHERE p.anio >= 2020
GROUP BY c.nombre;


SELECT c.nombre, COUNT(*) AS total_papers
FROM Conferencia c
JOIN Publicado pub ON pub.conferencia_id = c.id
JOIN Paper p ON p.id = pub.paper_id
WHERE p.anio >= 2020
GROUP BY c.nombre
HAVING COUNT(*) > 2;

SELECT columna1, columna2 FROM tablaA
UNION
SELECT columna1, columna2 FROM tablaB;

SELECT anio FROM Conferencia
UNION
SELECT anio FROM Paper;

SELECT anio FROM Conferencia
UNION ALL
SELECT anio FROM Paper;


SELECT anio FROM Conferencia
INTERSECT
SELECT anio FROM Paper;

SELECT anio FROM Paper
EXCEPT
SELECT anio FROM Conferencia;


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


-- Conjunto de años válidos (aparecen en ambas tablas)
(SELECT anio FROM Conferencia
 INTERSECT
 SELECT anio FROM Paper)


 -- Pares (autor, conferencia) a partir de lo presentado
SELECT ad.autor_id, pub.conferencia_id
FROM Autor_De ad
JOIN Publicado pub ON pub.paper_id = ad.paper_id
GROUP BY ad.autor_id, pub.conferencia_id


SELECT t.autor_id
FROM (
  SELECT ad.autor_id, pub.conferencia_id
  FROM Autor_De ad
  JOIN Publicado pub ON pub.paper_id = ad.paper_id
  GROUP BY ad.autor_id, pub.conferencia_id
) t
GROUP BY t.autor_id
HAVING COUNT(*) >= 2


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