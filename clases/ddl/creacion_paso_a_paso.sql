CREATE TABLE Conferencia (
    nombre VARCHAR(100),
    anio INT
);


INSERT INTO Conferencia VALUES ('SIGCSE', 2025);
INSERT INTO Conferencia VALUES ('VLDB', 2024);
INSERT INTO Conferencia VALUES ('VLDB', 2024); -- Nombre repetido
INSERT INTO Conferencia VALUES (NULL,  NULL); -- Valores nulos

DROP TABLE Conferencia;
CREATE TABLE Conferencia (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    anio INT NOT NULL
);

INSERT INTO Conferencia (nombre, anio) VALUES ('VLDB', 2024);
INSERT INTO Conferencia (nombre, anio) VALUES ('SIGMOD', 2023);
INSERT INTO Conferencia (nombre) VALUES ('ICDE'); -- Error: anio requerido

ALTER TABLE Conferencia
ADD CONSTRAINT chk_anio CHECK (anio >= 1900);

INSERT INTO Conferencia (nombre, anio) VALUES ('Conferencia Falsa', 1500);
-- Falla por violar el CHECK

CREATE TABLE Paper (
    id INT,
    titulo VARCHAR(200),
    paginas INT
);

INSERT INTO Paper VALUES (1, 'Bases de Datos Distribuidas', 0); -- Páginas en 0
INSERT INTO Paper VALUES (1, 'Sistemas de Información', 10);   -- ID duplicado


DROP TABLE Paper;
CREATE TABLE Paper (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    paginas INT CHECK (paginas > 0)
);

INSERT INTO Paper (titulo, paginas) VALUES ('Bases de Datos Distribuidas', 12);
INSERT INTO Paper (titulo, paginas) VALUES ('Sistemas de Información', 0); 
-- Error

CREATE TABLE Autor (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    afiliacion VARCHAR(150)
);

INSERT INTO Autor (nombre, afiliacion) VALUES ('Ricardo', 'PUC');
INSERT INTO Autor (afiliacion) VALUES ('PUC'); -- Error: nombre obligatorio

CREATE TABLE Publicado (
    conferencia_id INT,
    paper_id INT
);

INSERT INTO Publicado VALUES (999, 1); -- Conferencia inexistente

DROP TABLE Publicado;
CREATE TABLE Publicado (
    conferencia_id INT REFERENCES Conferencia(id) ON DELETE CASCADE,
    paper_id INT REFERENCES Paper(id) ON DELETE CASCADE,
    PRIMARY KEY (conferencia_id, paper_id)
);

INSERT INTO Publicado VALUES (1, 1); -- válido
INSERT INTO Publicado VALUES (999, 1); -- error: no existe conferencia 999

CREATE TABLE Autor_De (
    autor_id INT REFERENCES Autor(id),
    paper_id INT REFERENCES Paper(id),
    orden INT CHECK (orden > 0),
    PRIMARY KEY (autor_id, paper_id)
);

ALTER TABLE Publicado
ADD CONSTRAINT unique_conf_paper UNIQUE (conferencia_id, paper_id);