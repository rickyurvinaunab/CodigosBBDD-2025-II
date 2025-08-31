-- =========================================
-- Insertar datos en Peliculas
-- =========================================
INSERT INTO Peliculas (id, nombre, anio, categoria, calificacion, director) VALUES
(1, 'Interstellar', 2014, 'SciFi', 8.6, 'C. Nolan'),
(2, 'The Revenant', 2015, 'Drama', 8.1, 'A. Iñárritu'),
(3, 'Harry Potter', 2011, 'Fantasia', 8.1, 'D. Yates'),
(4, 'The Theory of Everything', 2014, 'Biografia', 7.7, 'J. Marsh'),
(5, 'Inception', 2010, 'Adventure', 8.8, 'C. Nolan');

-- =========================================
-- Insertar datos en Actores
-- =========================================
INSERT INTO Actores (id, nombre, edad) VALUES
(1, 'Leonardo DiCaprio', 41),
(2, 'Matthew McConaughey', 46),
(3, 'Daniel Radcliffe', 27),
(4, 'Jessica Chastain', 39);

-- =========================================
-- Insertar datos en Actuo_en (relación N:M)
-- =========================================
-- Nota: Se asume que los IDs de arriba ya están insertados
INSERT INTO Actuo_en (id_actor, id_pelicula) VALUES
(1, 2),  -- Leonardo DiCaprio en The Revenant
(2, 1),  -- Matthew McConaughey en Interstellar
(4, 1),  -- Jessica Chastain en Interstellar
(3, 3),  -- Daniel Radcliffe en Harry Potter
(1, 5);  -- Leonardo DiCaprio en Inception