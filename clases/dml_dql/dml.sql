UPDATE Conferencia
SET nombre = 'VLDB 2024', anio = 2024
WHERE id = 1;

SELECT nombre, anio
FROM Conferencia;

SELECT titulo_completo, paginas
FROM Paper
WHERE paginas > 15;

SELECT titulo_completo, paginas
FROM Paper
ORDER BY paginas DESC;

SELECT p.titulo_completo, c.nombre AS conferencia
FROM Paper p
INNER JOIN Publicado pub ON p.id = pub.paper_id
INNER JOIN Conferencia c ON c.id = pub.conferencia_id;

SELECT p.titulo_completo, c.nombre AS conferencia
FROM Paper p
LEFT JOIN Publicado pub ON p.id = pub.paper_id
LEFT JOIN Conferencia c ON c.id = pub.conferencia_id;


SELECT a.nombre AS autor, p.titulo_completo, c.nombre AS conferencia
FROM Autor a
INNER JOIN Autor_De ad ON a.id = ad.autor_id
INNER JOIN Paper p ON p.id = ad.paper_id
INNER JOIN Publicado pub ON p.id = pub.paper_id
INNER JOIN Conferencia c ON c.id = pub.conferencia_id;


SELECT titulo_completo
FROM Paper
WHERE id IN (
  SELECT paper_id
  FROM Publicado
  WHERE conferencia_id = 1
);


SELECT nombre
FROM Autor a
WHERE EXISTS (
  SELECT 1
  FROM Autor_De ad
  WHERE ad.autor_id = a.id
);

SELECT p.titulo_completo, c.nombre
FROM Paper p
RIGHT JOIN Publicado pub ON p.id = pub.paper_id
RIGHT JOIN Conferencia c ON c.id = pub.conferencia_id;

SELECT a.nombre, c.nombre
FROM Autor a
CROSS JOIN Conferencia c;