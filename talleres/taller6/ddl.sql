
CREATE TABLE clinica (
    id_clinica      SERIAL PRIMARY KEY,
    nombre          VARCHAR(120) NOT NULL UNIQUE,
    email           VARCHAR(120) NOT NULL UNIQUE,
    direccion          VARCHAR(80)  NOT NULL
);

CREATE TABLE medico (
    id_medico       SERIAL PRIMARY KEY,
    rut             VARCHAR(12)  NOT NULL UNIQUE,  
    nombres         VARCHAR(100) NOT NULL,
    apellidos       VARCHAR(100) NOT NULL,
    especialidad    VARCHAR(80)  NOT NULL
);


CREATE TABLE paciente (
    id_paciente     SERIAL PRIMARY KEY,
    rut             VARCHAR(12)  NOT NULL UNIQUE, 
    nombres         VARCHAR(100) NOT NULL,
    apellidos       VARCHAR(100) NOT NULL,
    email           VARCHAR(120) NOT NULL UNIQUE
);

CREATE TABLE medico_clinica (
    id_medico_clinica   SERIAL PRIMARY KEY,
    id_medico           INTEGER NOT NULL REFERENCES medico(id_medico) ON DELETE CASCADE,
    id_clinica          INTEGER NOT NULL REFERENCES clinica(id_clinica) ON DELETE CASCADE,
    horas   INTEGER NOT NULL,
    CONSTRAINT chk_horas_pos CHECK (horas > 0)
);

CREATE TABLE cita (
    id_cita         SERIAL PRIMARY KEY,
    id_medico_clinica     INTEGER NOT NULL REFERENCES medico_clinica(id_medico_clinica) ON DELETE RESTRICT,
    id_paciente     INTEGER NOT NULL REFERENCES paciente(id_paciente) ON DELETE RESTRICT,
    hora            TIME    NOT NULL
);

