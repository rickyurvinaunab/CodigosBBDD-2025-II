
DROP TABLE IF EXISTS Entrada CASCADE;
DROP TABLE IF EXISTS Funcion_Especial CASCADE;
DROP TABLE IF EXISTS Funcion CASCADE;
DROP TABLE IF EXISTS Empleado CASCADE;
DROP TABLE IF EXISTS Cliente CASCADE;
DROP TABLE IF EXISTS Persona CASCADE;
DROP TABLE IF EXISTS Pelicula CASCADE;
DROP TABLE IF EXISTS Sala CASCADE;


CREATE TABLE Sala(
  id_sala       SERIAL PRIMARY KEY,
  capacidad     INTEGER      NOT NULL CHECK (capacidad > 0),
  formato       VARCHAR(20) NOT NULL
);

CREATE TABLE Pelicula(
  codigo_pelicula  VARCHAR(20) PRIMARY KEY,
  titulo           VARCHAR(200) NOT NULL,
  duracion         INTEGER      NOT NULL CHECK (duracion > 0),
  pais_origen      VARCHAR(80)  NOT NULL
);

CREATE TABLE Persona(
  rut     VARCHAR(20) PRIMARY KEY,
  nombre  VARCHAR(120) NOT NULL
);

CREATE TABLE Cliente(
  rut             VARCHAR(20) PRIMARY KEY,
  fecha_registro  DATE NOT NULL,
  FOREIGN KEY (rut) REFERENCES Persona(rut) ON DELETE CASCADE
);

CREATE TABLE Empleado(
  rut        VARCHAR(20) PRIMARY KEY,
  cargo      VARCHAR(80) NOT NULL,
  id_sala    INTEGER     NOT NULL,
  FOREIGN KEY (rut) REFERENCES Persona(rut) ON DELETE CASCADE,
  FOREIGN KEY (id_sala) REFERENCES Sala(id_sala) ON DELETE RESTRICT
);

CREATE TABLE Funcion(
  id_funcion       SERIAL PRIMARY KEY,
  fecha            DATE NOT NULL,
  hora             TIME NOT NULL,
  id_sala          INTEGER NOT NULL,
  codigo_pelicula  VARCHAR(20) NOT NULL,
  UNIQUE (id_sala, fecha, hora),
  FOREIGN KEY (id_sala) REFERENCES Sala(id_sala) ON DELETE RESTRICT,
  FOREIGN KEY (codigo_pelicula) REFERENCES Pelicula(codigo_pelicula) ON DELETE RESTRICT
);

CREATE TABLE Funcion_Especial(
  id_funcion  INTEGER PRIMARY KEY,
  tipo        VARCHAR(60) NOT NULL,
  FOREIGN KEY (id_funcion) REFERENCES Funcion(id_funcion) ON DELETE CASCADE
);

CREATE TABLE Entrada(
  id_entrada     SERIAL PRIMARY KEY,
  id_funcion     INTEGER NOT NULL,
  rut_cliente    VARCHAR(20) NOT NULL,
  numero_asiento INTEGER NOT NULL CHECK (numero_asiento > 0),
  precio         NUMERIC(10,2) NOT NULL CHECK (precio >= 0),
  rut_empleado   VARCHAR(20) NULL,
  UNIQUE (id_funcion, numero_asiento),
  FOREIGN KEY (id_funcion) REFERENCES Funcion(id_funcion) ON DELETE RESTRICT,
  FOREIGN KEY (rut_cliente) REFERENCES Cliente(rut) ON DELETE RESTRICT,
  FOREIGN KEY (rut_empleado) REFERENCES Empleado(rut) ON DELETE SET NULL
);