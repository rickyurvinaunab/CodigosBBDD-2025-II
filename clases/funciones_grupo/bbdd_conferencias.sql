-- ========================
-- Limpieza previa
-- ========================
DROP TABLE IF EXISTS Autor_De CASCADE;
DROP TABLE IF EXISTS Publicado CASCADE;
DROP TABLE IF EXISTS Autor CASCADE;
DROP TABLE IF EXISTS Paper CASCADE;
DROP TABLE IF EXISTS Conferencia CASCADE;

-- ========================
-- Creación de tablas
-- ========================

CREATE TABLE Conferencia (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    anio INT NOT NULL CHECK (anio >= 1900)
);

CREATE TABLE Paper (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    anio INT CHECK (anio >= 1900),
    paginas INT CHECK (paginas > 0)
);

CREATE TABLE Autor (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    afiliacion VARCHAR(150)
);

CREATE TABLE Publicado (
    conferencia_id INT REFERENCES Conferencia(id) ON DELETE CASCADE,
    paper_id INT REFERENCES Paper(id) ON DELETE CASCADE,
    PRIMARY KEY (conferencia_id, paper_id),
    CONSTRAINT unique_conf_paper UNIQUE (conferencia_id, paper_id)
);

CREATE TABLE Autor_De (
    autor_id INT REFERENCES Autor(id),
    paper_id INT REFERENCES Paper(id),
    orden INT CHECK (orden > 0),
    PRIMARY KEY (autor_id, paper_id)
);