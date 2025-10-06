-- Actualiza los datos de una conferencia especifica
UPDATE Conferencia
SET nombre = 'VLDB 2024',  -- cambia el nombre de la conferencia
    anio = 2024            -- cambia el anio de la conferencia
WHERE id = 1;              -- solo modifica la conferencia con id igual a 1


-- Muestra todas las conferencias con su nombre y anio
SELECT nombre, anio
FROM Conferencia;


-- Muestra los titulos y paginas de los papers que tienen mas de 15 paginas
SELECT titulo, paginas
FROM Paper
WHERE paginas > 15;


-- Muestra los titulos y paginas de los papers ordenados de mayor a menor por paginas
SELECT titulo, paginas
FROM Paper
ORDER BY paginas DESC;


-- Muestra los titulos de los papers y el nombre de la conferencia donde fueron publicados
SELECT p.titulo, c.nombre AS conferencia
FROM Paper p
INNER JOIN Publicado pub ON p.id = pub.paper_id       -- une paper con publicado
INNER JOIN Conferencia c ON c.id = pub.conferencia_id; -- une publicado con conferencia


-- Muestra todos los papers, incluyendo los que no tienen conferencia asociada
SELECT p.titulo, c.nombre AS conferencia
FROM Paper p
LEFT JOIN Publicado pub ON p.id = pub.paper_id         -- incluye todos los papers
LEFT JOIN Conferencia c ON c.id = pub.conferencia_id;  -- agrega conferencia si existe


-- Muestra autores con sus papers y la conferencia donde fueron publicados
SELECT a.nombre AS autor, p.titulo, c.nombre AS conferencia
FROM Autor a
RIGHT JOIN Autor_De ad ON a.id = ad.autor_id           -- une autor con tabla intermedia
RIGHT JOIN Paper p ON p.id = ad.paper_id               -- une con los papers del autor
RIGHT JOIN Publicado pub ON p.id = pub.paper_id        -- une con tabla de publicaciones
RIGHT JOIN Conferencia c ON c.id = pub.conferencia_id; -- une con conferencia


-- Crea todas las combinaciones posibles entre autores y conferencias
SELECT a.nombre, c.nombre
FROM Autor a
CROSS JOIN Conferencia c;                               -- producto cartesiano entre ambas tablas


-- Muestra los titulos de los papers publicados en la conferencia con id = 1
SELECT titulo
FROM Paper
WHERE id IN (                                           -- busca papers cuyos id esten en el resultado del subquery
  SELECT paper_id
  FROM Publicado
  WHERE conferencia_id = 1
);


-- Muestra los nombres de los autores que tienen al menos un paper
SELECT nombre
FROM Autor a
WHERE EXISTS (                                          -- verifica si existe una relacion en la tabla Autor_De
  SELECT 1
  FROM Autor_De ad
  WHERE ad.autor_id = a.id
);
