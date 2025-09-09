-- 1. Libros cuyo título contiene 'Historia'
SELECT * FROM Libro
WHERE titulo ILIKE '%Historia%';

-- 2. Autores cuyo nombre comienza con 'A'
SELECT * FROM Autor
WHERE nombre ILIKE 'A%';

-- 3. Categorías distintas en las que existen libros prestados
SELECT DISTINCT c.nombre
FROM Prestamo p
JOIN Ejemplar e   ON p.id_ejemplar = e.id
JOIN Libro l      ON e.id_libro = l.id
JOIN LibroCategoria lc ON lc.id_libro = l.id
JOIN Categoria c  ON c.id = lc.id_categoria;

-- 4. Cantidad de préstamos por estudiante
SELECT es.nombre AS estudiante, COUNT(*) AS total_prestamos
FROM Prestamo p
JOIN Estudiante es ON es.id = p.id_estudiante
GROUP BY es.nombre
ORDER BY total_prestamos DESC, es.nombre;

-- 5. Número total de ejemplares disponibles por sucursal
SELECT s.nombre AS sucursal, COUNT(*) AS disponibles
FROM Ejemplar e
JOIN Sucursal s ON s.id = e.id_sucursal
WHERE e.estado = 'DISPONIBLE'
GROUP BY s.nombre
ORDER BY disponibles DESC, s.nombre;

-- 6. Categorías con más de 5 libros distintos
SELECT c.nombre, COUNT(DISTINCT l.id) AS cantidad_libros
FROM LibroCategoria lc
JOIN Categoria c ON c.id = lc.id_categoria
JOIN Libro l     ON l.id = lc.id_libro
GROUP BY c.nombre
HAVING COUNT(DISTINCT l.id) > 5;

-- 7. Libros que nunca han sido prestados
SELECT l.*
FROM Libro l
WHERE l.id NOT IN (
  SELECT e.id_libro
  FROM Prestamo p
  JOIN Ejemplar e ON e.id = p.id_ejemplar
);

-- 8. Estudiantes que han reservado un libro pero no lo han prestado
SELECT DISTINCT es.nombre
FROM Reserva r
JOIN Estudiante es ON es.id = r.id_estudiante
WHERE es.id NOT IN (
  SELECT p.id_estudiante FROM Prestamo p
);

-- 9. Estudiantes cuya cantidad de préstamos es mayor que todos los de Filosofía
SELECT es.nombre
FROM Estudiante es
JOIN Prestamo p ON p.id_estudiante = es.id
GROUP BY es.nombre
HAVING COUNT(*) > ALL (
  SELECT COUNT(*)
  FROM Estudiante esf
  LEFT JOIN Prestamo pf ON pf.id_estudiante = esf.id
  WHERE esf.id_carrera = (SELECT id FROM Carrera WHERE nombre = 'Filosofía')
  GROUP BY esf.id
);

-- 10. Títulos que tienen ejemplares tanto en 'Sucursal A' como en 'Sucursal B'
SELECT l.titulo
FROM Libro l
WHERE l.id IN (
  SELECT eA.id_libro
  FROM Ejemplar eA
  JOIN Sucursal sA ON sA.id = eA.id_sucursal
  WHERE sA.nombre = 'Sucursal A'
)
INTERSECT
SELECT l2.titulo
FROM Libro l2
WHERE l2.id IN (
  SELECT eB.id_libro
  FROM Ejemplar eB
  JOIN Sucursal sB ON sB.id = eB.id_sucursal
  WHERE sB.nombre = 'Sucursal B'
);

-- 11. Todos los préstamos con estudiante, libro y sucursal
SELECT es.nombre AS estudiante, l.titulo, s.nombre AS sucursal, p.fecha_prestamo
FROM Prestamo p
JOIN Estudiante es ON es.id = p.id_estudiante
JOIN Ejemplar e    ON e.id = p.id_ejemplar
JOIN Libro l       ON l.id = e.id_libro
JOIN Sucursal s    ON s.id = e.id_sucursal
ORDER BY p.fecha_prestamo;

-- 12. Todas las editoriales y la cantidad de libros publicados
SELECT ed.nombre AS editorial, COUNT(l.id) AS total_libros
FROM Editorial ed
LEFT JOIN Libro l ON l.id_editorial = ed.id
GROUP BY ed.nombre
ORDER BY total_libros DESC, ed.nombre;

-- 13. Todos los estudiantes y sus préstamos (si no tiene, aparece igual)
SELECT es.nombre AS estudiante, p.id AS id_prestamo
FROM Estudiante es
LEFT JOIN Prestamo p ON p.id_estudiante = es.id
ORDER BY es.nombre, p.id;

-- 14. Todos los préstamos y sus multas (si no tiene, mostrar NULL)
SELECT p.id AS id_prestamo, es.nombre AS estudiante, l.titulo, m.monto, m.pagada, m.motivo
FROM Prestamo p
JOIN Estudiante es ON es.id = p.id_estudiante
JOIN Ejemplar e    ON e.id = p.id_ejemplar
JOIN Libro l       ON l.id = e.id_libro
LEFT JOIN Multa m  ON m.id_prestamo = p.id
ORDER BY p.id;

-- 15. Estudiantes que han hecho préstamos EXCEPT los que han hecho reservas
SELECT DISTINCT es.nombre
FROM Prestamo p
JOIN Estudiante es ON es.id = p.id_estudiante
EXCEPT
SELECT DISTINCT es2.nombre
FROM Reserva r
JOIN Estudiante es2 ON es2.id = r.id_estudiante
ORDER BY nombre;

-- 16. Autores con libros en Ciencia Ficción INTERSECT con autores en Fantasía
SELECT a.nombre
FROM Autor a
JOIN LibroAutor la ON la.id_autor = a.id
JOIN LibroCategoria lc ON lc.id_libro = la.id_libro
JOIN Categoria c ON c.id = lc.id_categoria
WHERE c.nombre = 'Ciencia Ficción'
INTERSECT
SELECT a2.nombre
FROM Autor a2
JOIN LibroAutor la2 ON la2.id_autor = a2.id
JOIN LibroCategoria lc2 ON lc2.id_libro = la2.id_libro
JOIN Categoria c2 ON c2.id = lc2.id_categoria
WHERE c2.nombre = 'Fantasía';

-- 17. Títulos de Filosofía UNION títulos de Tecnología
SELECT DISTINCT l.titulo
FROM Libro l
JOIN LibroCategoria lc ON lc.id_libro = l.id
JOIN Categoria c ON c.id = lc.id_categoria
WHERE c.nombre = 'Filosofía'
UNION
SELECT DISTINCT l2.titulo
FROM Libro l2
JOIN LibroCategoria lc2 ON lc2.id_libro = l2.id
JOIN Categoria c2 ON c2.id = lc2.id_categoria
WHERE c2.nombre = 'Tecnología';

-- 18. Categorías en préstamos con UNION ALL vs UNION
-- UNION ALL
SELECT c.nombre AS categoria
FROM Prestamo p
JOIN Ejemplar e   ON e.id = p.id_ejemplar
JOIN Libro l      ON l.id = e.id_libro
JOIN LibroCategoria lc ON lc.id_libro = l.id
JOIN Categoria c  ON c.id = lc.id_categoria
UNION ALL
SELECT c.nombre
FROM Prestamo p
JOIN Ejemplar e   ON e.id = p.id_ejemplar
JOIN Libro l      ON l.id = e.id_libro
JOIN LibroCategoria lc ON lc.id_libro = l.id
JOIN Categoria c  ON c.id = lc.id_categoria;

-- UNION (sin duplicados)
SELECT DISTINCT c.nombre AS categoria
FROM Prestamo p
JOIN Ejemplar e   ON e.id = p.id_ejemplar
JOIN Libro l      ON l.id = e.id_libro
JOIN LibroCategoria lc ON lc.id_libro = l.id
JOIN Categoria c  ON c.id = lc.id_categoria;

-- 19. Préstamos sin devolución
SELECT p.*
FROM Prestamo p
WHERE p.fecha_devolucion IS NULL;

-- 20. Estudiantes con multas cuyo motivo es NULL
SELECT DISTINCT es.nombre
FROM Multa m
JOIN Prestamo p  ON p.id = m.id_prestamo
JOIN Estudiante es ON es.id = p.id_estudiante
WHERE m.motivo IS NULL;

-- 21. COUNT(*) vs COUNT(motivo) en Multa
SELECT
  COUNT(*)         AS total_multas,
  COUNT(motivo)    AS multas_con_motivo,
  (COUNT(*) - COUNT(motivo)) AS multas_sin_motivo
FROM Multa;

-- 22. Autores con nacionalidad NULL
SELECT * FROM Autor
WHERE nacionalidad IS NULL;