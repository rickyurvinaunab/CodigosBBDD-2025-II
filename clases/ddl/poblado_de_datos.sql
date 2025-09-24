
-- Conferencias
INSERT INTO Conferencia (nombre, anio) VALUES 
('VLDB', 2024),
('SIGMOD', 2023);

-- Papers (10 en total, 5 por conferencia)
INSERT INTO Paper (titulo, paginas) VALUES
('Bases de Datos Distribuidas', 12),
('Indexación Avanzada', 15),
('Optimización de Consultas', 18),
('Minería de Datos', 20),
('Big Data en la Nube', 22),
('Almacenamiento Columnar', 14),
('Procesamiento en Memoria', 16),
('Sistemas de Transacciones', 19),
('Seguridad en Bases de Datos', 21),
('Blockchain y Bases de Datos', 25);

-- Autores
INSERT INTO Autor (nombre, afiliacion) VALUES
('Ricardo Urvina', 'PUC Chile'),
('Inés Martínez', 'MIT'),
('Carlos Gómez', 'U. de Chile'),
('Laura Fernández', 'Stanford');

-- Publicado (5 papers en cada conferencia)
-- Conferencia 1 (VLDB 2024) -> papers 1 a 5
INSERT INTO Publicado VALUES (1, 1);
INSERT INTO Publicado VALUES (1, 2);
INSERT INTO Publicado VALUES (1, 3);
INSERT INTO Publicado VALUES (1, 4);
INSERT INTO Publicado VALUES (1, 5);

-- Conferencia 2 (SIGMOD 2023) -> papers 6 a 10
INSERT INTO Publicado VALUES (2, 6);
INSERT INTO Publicado VALUES (2, 7);
INSERT INTO Publicado VALUES (2, 8);
INSERT INTO Publicado VALUES (2, 9);
INSERT INTO Publicado VALUES (2, 10);

-- Autor_De (asignar autores a papers)
INSERT INTO Autor_De VALUES (1, 1, 1); -- Ricardo primer autor en paper 1
INSERT INTO Autor_De VALUES (2, 1, 2); -- Inés segundo autor en paper 1
INSERT INTO Autor_De VALUES (3, 2, 1);
INSERT INTO Autor_De VALUES (4, 2, 2);
INSERT INTO Autor_De VALUES (1, 3, 1);
INSERT INTO Autor_De VALUES (2, 4, 1);
INSERT INTO Autor_De VALUES (3, 5, 1);
INSERT INTO Autor_De VALUES (4, 6, 1);
INSERT INTO Autor_De VALUES (1, 7, 2);
INSERT INTO Autor_De VALUES (2, 7, 1);