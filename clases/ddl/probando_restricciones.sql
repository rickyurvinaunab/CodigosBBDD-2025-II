INSERT INTO Conferencia (nombre, anio)
VALUES ('Conferencia Fantasma', NULL);

INSERT INTO Conferencia (nombre, anio)
VALUES ('Conferencia Victoriana', 1850);

INSERT INTO Publicado (conferencia_id, paper_id)
VALUES (1, 1);

INSERT INTO Autor_De (autor_id, paper_id, orden)
VALUES (1, 2, 0);

CREATE TABLE Publicado (
    conferencia_id INT,
    paper_id INT
);


INSERT INTO Publicado VALUES (999, 1); -- Conferencia inexistente