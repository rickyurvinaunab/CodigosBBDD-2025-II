INSERT INTO Conferencia (nombre, anio) VALUES 
('VLDB', 2024),
('SIGMOD', 2023),
('NoSQL Summit', 2025);  


INSERT INTO Paper (titulo, paginas, anio) VALUES
('Bases de Datos Distribuidas', 12, 2018),
('Indexacion Avanzada', 15, 2019),
('Optimizacion de Consultas', 18, 2020),
('Mineria de Datos', 20, 2021),
('Big Data en la Nube', 22, 2022),
('Almacenamiento Columnar', 14, 2023),
('Procesamiento en Memoria', 16, 2024),
('Sistemas de Transacciones', 19, 2025),
('Seguridad en Bases de Datos', 21, 2020),
('Blockchain y Bases de Datos', 25, 2021),
('Analisis Predictivo', 10, 2022),   
('Deep Learning y SQL', 13, 2023);  


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


INSERT INTO Autor_De VALUES (1, 1, 1);
INSERT INTO Autor_De VALUES (2, 1, 2);
INSERT INTO Autor_De VALUES (3, 2, 1);
INSERT INTO Autor_De VALUES (4, 2, 2);
INSERT INTO Autor_De VALUES (1, 3, 1);
INSERT INTO Autor_De VALUES (2, 4, 1);
INSERT INTO Autor_De VALUES (3, 5, 1);
INSERT INTO Autor_De VALUES (4, 6, 1);
INSERT INTO Autor_De VALUES (1, 7, 2);
INSERT INTO Autor_De VALUES (2, 7, 1);

