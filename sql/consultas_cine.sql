-- Para las todas las
SELECT *
FROM Peliculas WHERE anio >= 2010;

-- Para las películas estrenadas desde el 2010:
SELECT *
FROM Peliculas WHERE anio >= 2010;
-- El WHERE permite =, <>, !=, >, <, <=, >=, AND, OR, NOT, IN, BETWEEN, etc...

-- Películas estrenadas entre 1971 y 1978:
SELECT *
FROM Peliculas
WHERE anio BETWEEN 1971 AND 1978;

-- Películas estrenadas en 1971, 1973 y 2001:
SELECT *
FROM Peliculas
WHERE anio IN (1971, 1973, 2014);

-- Para actualizar valores de una tabla:
UPDATE Peliculas SET calificacion = 0
WHERE nombre = 'Inception';

-- ¿Qué pasa si se nos olvida el WHERE en un UPDATE o DELETE FROM?
UPDATE peliculas SET nombre = 'Hola';

UPDATE Peliculas SET calificacion = 0;

-- Si pedimos datos de más de una tabla la base de datos va hacer un producto cruz y entregará nxm filas.
SELECT	*
FROM Peliculas, Actuo_en;

-- Por ejemplo, para obtener todas las películas junto a los ids de los actores que participaron en ella:

SELECT *
FROM Peliculas, Actuo_en WHERE id = id_pelicula;

-- Entregue todas las películas junto a los id de los actores que participaron en ella:
SELECT *
FROM Peliculas, Actuo_en
WHERE Peliculas.id = Actuo_en.id_pelicula;


-- ¿Y si queremos los nombres de los actores en vez de los ids?

SELECT Peliculas.nombre, Actores.nombre FROM Peliculas, Actuo_en, Actores WHERE Peliculas.id = Actuo_en.id_pelicula AND Actores.id = Actuo_en.id_actor;

SELECT Peliculas.nombre as peli_nombre, Actores.nombre as act_nombre FROM Peliculas, Actuo_en, Actores WHERE Peliculas.id = Actuo_en.id_pelicula AND Actores.id = Actuo_en.id_actor;
-- Podemos acortar la consulta anterior:

SELECT p.nombre, a.nombre as a_nombre
FROM Peliculas as p, Actuo_en as ae, Actores as a WHERE p.id = ae.id_pelicula
AND a.id = ae.id_actor
-- Ese tipo de alias no es muy recomendable


-- Podemos hacer operaciones y nombrar la columna:
SELECT (nombre || ' dirigida por ' || director) as creditos, anio
FROM Peliculas

-- Entregue el nombre y la calificación de todas las películas (orden ascendente):
SELECT nombre, calificacion FROM Peliculas
ORDER BY nombre, calificacion

-- El i-ésimo atributo del ORDER BY resuelve un empate en el atributo i-1

-- Entregue el nombre y la calificación de todas las películas (orden descendente):
SELECT nombre, calificacion FROM Peliculas
ORDER BY nombre DESC, calificacion
-- dentro de cada grupo de películas que tengan el mismo nombre, se aplica un segundo criterio de ordenación (en este caso calificacion, por defecto ascendente).


-- Entregue el nombre de todos actores y directores:
SELECT nombre FROM Actores UNION
SELECT director FROM Peliculas
