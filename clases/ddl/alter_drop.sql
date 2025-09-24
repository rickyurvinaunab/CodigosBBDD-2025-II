ALTER TABLE Conferencia
ADD COLUMN pais VARCHAR(50);

UPDATE Conferencia
SET pais = 'Chile'
WHERE nombre = 'VLDB';

UPDATE Conferencia
SET pais = 'EEUU'
WHERE nombre = 'SIGMOD';

ALTER TABLE Autor
DROP COLUMN afiliacion;

ALTER TABLE Conferencia
ALTER COLUMN anio TYPE SMALLINT;

ALTER TABLE Paper
RENAME COLUMN titulo TO titulo_completo;

ALTER TABLE Conferencia
ADD CONSTRAINT unique_nombre_anio UNIQUE (nombre, anio);

ALTER TABLE Conferencia
DROP CONSTRAINT unique_nombre_anio;

DROP TABLE Publicado;

DROP TABLE IF EXISTS Autor_De;