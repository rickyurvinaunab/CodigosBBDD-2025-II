DROP TABLE IF EXISTS Autor_De CASCADE;
DROP TABLE IF EXISTS Publicado CASCADE;
DROP TABLE IF EXISTS Autor CASCADE;
DROP TABLE IF EXISTS Paper CASCADE;
DROP TABLE IF EXISTS Conferencia CASCADE;

CREATE TABLE Conferencia (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Publicado (
    conferencia_id INT REFERENCES Conferencia(id) ON DELETE CASCADE,
    paper_id INT
);

-- Insertar datos
INSERT INTO Conferencia (nombre) VALUES ('VLDB');
INSERT INTO Publicado VALUES (1, 101);

-- Eliminar conferencia
DELETE FROM Conferencia WHERE id = 1;
-- También se elimina (1,101) de Publicado


CREATE TABLE Autor (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Paper (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(200),
    autor_id INT REFERENCES Autor(id) ON DELETE SET NULL
);

-- Insertar datos
INSERT INTO Autor (nombre) VALUES ('Ricardo');
INSERT INTO Paper (titulo, autor_id) VALUES ('Bases de Datos', 1);

-- Eliminar autor
DELETE FROM Autor WHERE id = 1;
-- Paper sigue existiendo pero autor_id pasa a NULL
