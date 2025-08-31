-- =========================================
-- Limpieza (para en el caso de que existan las tablas previamente, las borra)
-- =========================================
DROP TABLE IF EXISTS Actuo_en CASCADE;
DROP TABLE IF EXISTS Peliculas CASCADE;
DROP TABLE IF EXISTS Actores CASCADE;

-- =========================================
-- Tablas base
-- =========================================

-- Películas
CREATE TABLE Peliculas (
  id SERIAL PRIMARY KEY,
  nombre        VARCHAR(100)  NOT NULL CHECK (length(trim(nombre)) > 0),
  anio          INTEGER       NOT NULL CHECK ( anio BETWEEN 1888 AND 2025),
  categoria     VARCHAR(30)   NOT NULL CHECK (length(trim(categoria)) > 0),
  calificacion  INTEGER  NOT NULL CHECK (calificacion BETWEEN 0 AND 10),
  director      VARCHAR(60)   NOT NULL CHECK (length(trim(director)) > 0),
  UNIQUE (nombre, anio)
  -- para que no se repite ninguna pelicula con el mismo nombre en el mismo anio
);

-- Actores
CREATE TABLE Actores (
  id SERIAL PRIMARY KEY,
  nombre   VARCHAR(100) NOT NULL CHECK (length(trim(nombre)) > 0),
  edad     INTEGER      NOT NULL CHECK (edad BETWEEN 0 AND 100)
);

-- Relación N:M (actor ↔ película)
CREATE TABLE Actuo_en (
  id_actor     INTEGER NOT NULL,
  id_pelicula  INTEGER NOT NULL,
  PRIMARY KEY (id_actor, id_pelicula),
  -- Esto evita que se ingresen dos actores en la misma pelicula
  FOREIGN KEY (id_actor)    REFERENCES Actores(id)   ON DELETE CASCADE,
  FOREIGN KEY (id_pelicula) REFERENCES Peliculas(id) ON DELETE CASCADE
);