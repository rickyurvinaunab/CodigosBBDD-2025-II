CREATE TABLE Sala(
  id_sala       SERIAL PRIMARY KEY,
  capacidad     INTEGER      NOT NULL CHECK (capacidad > 0),
  formato       formato_sala NOT NULL
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
  rut             VARCHAR(20) PRIMARY KEY
                  REFERENCES Persona(rut) ON DELETE CASCADE,
  fecha_registro  DATE NOT NULL
);

CREATE TABLE Empleado(
  rut        VARCHAR(20) PRIMARY KEY
             REFERENCES Persona(rut) ON DELETE CASCADE,
  cargo      VARCHAR(80) NOT NULL,
  id_sala    INTEGER     NOT NULL
             REFERENCES Sala(id_sala) ON DELETE RESTRICT
);

CREATE TABLE Funcion(
  id_funcion       SERIAL PRIMARY KEY,
  fecha            DATE NOT NULL,
  hora             TIME NOT NULL,
  id_sala          INTEGER NOT NULL REFERENCES Sala(id_sala) ON DELETE RESTRICT,
  codigo_pelicula  VARCHAR(20) NOT NULL REFERENCES Pelicula(codigo_pelicula) ON DELETE RESTRICT,
  UNIQUE (id_sala, fecha, hora)
);

CREATE TABLE Funcion_Especial(
  id_funcion  INTEGER PRIMARY KEY
              REFERENCES Funcion(id_funcion) ON DELETE CASCADE,
  tipo        VARCHAR(60) NOT NULL
);

CREATE TABLE Entrada(
  id_entrada     SERIAL PRIMARY KEY,
  id_funcion     INTEGER NOT NULL
                 REFERENCES Funcion(id_funcion) ON DELETE RESTRICT,
  rut_cliente    VARCHAR(20) NOT NULL
                 REFERENCES Cliente(rut) ON DELETE RESTRICT,
  numero_asiento INTEGER NOT NULL CHECK (numero_asiento > 0),
  precio         NUMERIC(10,2) NOT NULL CHECK (precio >= 0),
  rut_empleado   VARCHAR(20) NULL
                 REFERENCES Empleado(rut) ON DELETE SET NULL,
  UNIQUE (id_funcion, numero_asiento)
);
-- ON DELETE RESTRICT ES UNA RESTRICCION QUE IMPIDE LA ELIMINACION DE UN REGISTRO EN LA TABLA PADRE SI EXISTEN REGISTROS RELACIONADOS EN LA TABLA HIJA.
-- ON DELETE SET NULL ES UNA ACCION QUE ESTABLECE EL VALOR DE LA COLUMNA RELACIONADA EN LA TABLA HIJA A NULL CUANDO SE ELIMINA EL REGISTRO CORRESPONDIENTE EN LA TABLA PADRE.
-- ON DELETE CASCADE ES UNA ACCION QUE ELIMINA AUTOMATICAMENTE LOS REGISTROS RELACIONADOS EN LA TABLA HIJA CUANDO SE ELIMINA EL REGISTRO
