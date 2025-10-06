INSERT INTO Conferencia (nombre, anio) VALUES 
('VLDB', 2024),
('SIGMOD', 2023),
('NoSQL Summit', 2025);  


INSERT INTO Paper (titulo, paginas) VALUES
('Bases de Datos Distribuidas', 12),
('Indexacion Avanzada', 15),
('Optimizacion de Consultas', 18),
('Mineria de Datos', 20),
('Big Data en la Nube', 22),
('Almacenamiento Columnar', 14),
('Procesamiento en Memoria', 16),
('Sistemas de Transacciones', 19),
('Seguridad en Bases de Datos', 21),
('Blockchain y Bases de Datos', 25),
('Analisis Predictivo', 10),   
('Deep Learning y SQL', 13);  


INSERT INTO Autor (nombre, afiliacion) VALUES
('Ricardo Urvina', 'PUC Chile'),
('Ines Martinez', 'MIT'),
('Carlos Gomez', 'U. de Chile'),
('Laura Fernandez', 'Stanford'),
('Mario Rojas', 'UTFSM'),     
('Ana Torres', 'PUCV');     


INSERT INTO Publicado VALUES (1, 1);
INSERT INTO Publicado VALUES (1, 2);
INSERT INTO Publicado VALUES (1, 3);
INSERT INTO Publicado VALUES (1, 4);
INSERT INTO Publicado VALUES (1, 5);

INSERT INTO Publicado VALUES (2, 6);
INSERT INTO Publicado VALUES (2, 7);
INSERT INTO Publicado VALUES (2, 8);
INSERT INTO Publicado VALUES (2, 9);
INSERT INTO Publicado VALUES (2, 10);


INSERT INTO Autor_De VALUES (1, 1, 1)
INSERT INTO Autor_De VALUES (2, 1, 2);
INSERT INTO Autor_De VALUES (3, 2, 1);
INSERT INTO Autor_De VALUES (4, 2, 2);
INSERT INTO Autor_De VALUES (1, 3, 1);
INSERT INTO Autor_De VALUES (2, 4, 1);
INSERT INTO Autor_De VALUES (3, 5, 1);
INSERT INTO Autor_De VALUES (4, 6, 1);
INSERT INTO Autor_De VALUES (1, 7, 2);
INSERT INTO Autor_De VALUES (2, 7, 1);

