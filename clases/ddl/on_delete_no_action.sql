CREATE TABLE Profesor (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Curso (
    id SERIAL PRIMARY KEY,
    profesor_id INT REFERENCES Profesor(id) ON DELETE NO ACTION
);

INSERT INTO Profesor (nombre) VALUES ('Inés');
INSERT INTO Curso (profesor_id) VALUES (1);

DELETE FROM Profesor WHERE id = 1;
-- ERROR: violates foreign key constraint