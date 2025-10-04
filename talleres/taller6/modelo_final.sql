
CREATE TABLE IF NOT EXISTS clinica (
    id_clinica        SERIAL PRIMARY KEY,
    nombre            VARCHAR(120) NOT NULL UNIQUE,
    email             VARCHAR(120) NOT NULL UNIQUE,
    direccion         VARCHAR(120) NOT NULL,
    telefono_contacto VARCHAR(20)  NOT NULL DEFAULT 'N/A'
);

CREATE TABLE IF NOT EXISTS medico (
    id_medico              SERIAL PRIMARY KEY,
    rut                    VARCHAR(12)  NOT NULL UNIQUE,
    nombres                VARCHAR(100) NOT NULL,
    apellidos              VARCHAR(100) NOT NULL,
    especialidad_principal VARCHAR(80)  NOT NULL
);

CREATE TABLE IF NOT EXISTS paciente (
    id_paciente     SERIAL PRIMARY KEY,
    rut             VARCHAR(12)  NOT NULL UNIQUE,
    nombres         VARCHAR(100) NOT NULL,
    apellidos       VARCHAR(100) NOT NULL,
    email           VARCHAR(150) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS medico_clinica (
    id_medico_clinica SERIAL PRIMARY KEY,
    id_medico         INTEGER NOT NULL REFERENCES medico(id_medico)   ON DELETE CASCADE,
    id_clinica        INTEGER NOT NULL REFERENCES clinica(id_clinica) ON DELETE CASCADE,
    horas             INTEGER NOT NULL,
    CONSTRAINT chk_horas_pos CHECK (horas >= 8 AND horas <= 45),
    CONSTRAINT unq_medico_clinica UNIQUE (id_medico, id_clinica)
);

CREATE TABLE IF NOT EXISTS cita (
    id_cita             SERIAL PRIMARY KEY,
    id_medico_clinica   INTEGER NOT NULL REFERENCES medico_clinica(id_medico_clinica) ON DELETE RESTRICT,
    id_paciente         INTEGER NOT NULL REFERENCES paciente(id_paciente)             ON DELETE RESTRICT,
    fecha               DATE    NOT NULL,
    hora                TIME    NOT NULL,
    estado              VARCHAR(20) NOT NULL DEFAULT 'PROGRAMADA',
    CONSTRAINT chk_estado_cita CHECK (estado IN ('PROGRAMADA','REALIZADA','CANCELADA'))
);


INSERT INTO clinica (nombre, email, direccion, telefono_contacto) VALUES
('Clínica Alemana Vitacura',     'c1@clinicas.cl',  'Av. Vitacura 5951, Vitacura', '222100001'),
('Clínica Santa María',          'c2@clinicas.cl',  'Av. Santa María 0410, Providencia', '222100002'),
('Clínica Las Condes',           'c3@clinicas.cl',  'Estoril 450, Las Condes', '222100003'),
('Clínica Dávila',               'c4@clinicas.cl',  'Recoleta 464, Recoleta', '222100004'),
('Clínica Indisa',               'c5@clinicas.cl',  'Santa María 1810, Providencia', '222100005'),
('Clínica UC Christus',          'c6@clinicas.cl',  'Marcoleta 367, Santiago', '222100006'),
('Clínica Vespucio',             'c7@clinicas.cl',  'Av. La Florida 9671, La Florida', '222100007'),
('Clínica Bicentenario',         'c8@clinicas.cl',  'Av. Libertador 4850, Santiago', '222100008'),
('Clínica Cordillera',           'c9@clinicas.cl',  'Av. Las Condes 11000, Las Condes', '222100009'),
('Clínica Tabancura',            'c10@clinicas.cl', 'Av. Tabancura 1071, Vitacura', '222100010'),
('Clínica U. de los Andes',      'c11@clinicas.cl', 'San Carlos de Apoquindo, Las Condes', '222100011'),
('Clínica Santa María Oriente',  'c12@clinicas.cl', 'Av. Presidente Riesco 5150, Las Condes', '222100012'),
('Clínica Providencia',          'c13@clinicas.cl', 'Providencia 1234, Providencia', '222100013'),
('Clínica Ñuñoa',                'c14@clinicas.cl', 'Irarrázaval 5555, Ñuñoa', '222100014'),
('Clínica Lo Curro',             'c15@clinicas.cl', 'Av. Santa María 9000, Vitacura', '222100015'),
('Clínica San Joaquín',          'c16@clinicas.cl', 'Av. Vicuña Mackenna 5000, San Joaquín', '222100016'),
('Clínica Quilín',               'c17@clinicas.cl', 'Av. Quilín 3450, Macul', '222100017'),
('Clínica La Reina',             'c18@clinicas.cl', 'Av. Larraín 900, La Reina', '222100018'),
('Clínica Maipú',                'c19@clinicas.cl', 'Av. Pajaritos 3000, Maipú', '222100019'),
('Clínica Huechuraba',           'c20@clinicas.cl', 'Av. El Salto 5000, Huechuraba', '222100020');

INSERT INTO medico (rut, nombres, apellidos, especialidad_principal) VALUES
('10.111.111-1','Carolina','Rojas Pérez','Medicina Interna'),
('10.222.222-2','Diego','Muñoz Soto','Cardiología'),
('10.333.333-3','Valeria','Lagos Díaz','Pediatría'),
('10.444.444-4','Gonzalo','Pizarro Araya','Traumatología'),
('10.555.555-5','María','Contreras Silva','Dermatología'),
('10.666.666-6','Jorge','Fuentes Torres','Neurología'),
('10.777.777-7','Alejandra','Vidal Herrera','Ginecología'),
('10.888.888-8','Felipe','Castro Núñez','Urología'),
('10.999.999-9','Camila','Soto Riquelme','Endocrinología'),
('11.111.111-1','Andrés','Morales Rojas','Otorrinolaringología'),
('11.222.222-2','Constanza','Figueroa Díaz','Oftalmología'),
('11.333.333-3','Matías','Garrido León','Gastroenterología'),
('11.444.444-4','Daniela','Mella Campos','Reumatología'),
('11.555.555-5','Pablo','Navarro Pino','Nefrología'),
('11.666.666-6','Isidora','Arancibia Pérez','Oncología'),
('11.777.777-7','Tomás','Vergara Cruz','Cirugía General'),
('11.888.888-8','Francisca','Reyes Salas','Psiquiatría'),
('11.999.999-9','Sebastián','Lara Gómez','Medicina Familiar'),
('12.111.111-1','Ignacio','Cortés Araya','Hematología'),
('12.222.222-2','Paula','Valdés Muñoz','Neumología');

INSERT INTO paciente (rut, nombres, apellidos, email) VALUES
('20.111.111-1','Ricardo','Urvina Córdova','p1@mail.com'),
('20.222.222-2','Ingrid','Zamora Reyes','p2@mail.com'),
('20.333.333-3','Mayra','López Vega','p3@mail.com'),
('20.444.444-4','Javier','Pérez Díaz','p4@mail.com'),
('20.555.555-5','Catalina','Fuentes Ríos','p5@mail.com'),
('20.666.666-6','Hernán','Gutiérrez Soto','p6@mail.com'),
('20.777.777-7','Claudia','Mora Silva','p7@mail.com'),
('20.888.888-8','Felipe','Vega Rojas','p8@mail.com'),
('20.999.999-9','Nicole','Araya Muñoz','p9@mail.com'),
('21.111.111-1','Rodrigo','Pino Lagos','p10@mail.com'),
('21.222.222-2','Lorena','Méndez Bravo','p11@mail.com'),
('21.333.333-3','Mauricio','Campos Díaz','p12@mail.com'),
('21.444.444-4','Barbara','Salas Torres','p13@mail.com'),
('21.555.555-5','Fernando','Saavedra Soto','p14@mail.com'),
('21.666.666-6','Ximena','Rivas Pérez','p15@mail.com'),
('21.777.777-7','Diego','Aravena Silva','p16@mail.com'),
('21.888.888-8','Katherine','Ruiz Romero','p17@mail.com'),
('21.999.999-9','Matilde','Sanhueza Peña','p18@mail.com'),
('22.111.111-1','Gustavo','Castillo Lara','p19@mail.com'),
('22.222.222-2','Pía','Orellana Díaz','p20@mail.com');

INSERT INTO medico_clinica (id_medico, id_clinica, horas) VALUES
(1, 1, 20),   -- 1
(1, 2, 16),   -- 2
(2, 3, 24),   -- 3
(2, 4, 12),   -- 4
(3, 5, 18),   -- 5
(3, 6, 20),   -- 6
(4, 7, 30),   -- 7
(4, 8, 16),   -- 8
(5, 9, 22),   -- 9
(5, 10, 14),  -- 10
(6, 11, 32),  -- 11
(6, 12, 10),  -- 12
(7, 13, 28),  -- 13
(7, 14, 12),  -- 14
(8, 15, 16),  -- 15
(8, 16, 20),  -- 16
(9, 17, 24),  -- 17
(9, 18, 14),  -- 18
(10, 19, 18), -- 19
(10, 20, 12); -- 20

INSERT INTO cita (id_medico_clinica, id_paciente, fecha, hora, estado) VALUES
(1, 1,  '2025-10-10', '09:00',  'PROGRAMADA'),
(2, 2,  '2025-10-10', '09:30',  'PROGRAMADA'),
(3, 3,  '2025-10-11', '10:00',  'REALIZADA'),
(4, 4,  '2025-10-11', '10:30',  'PROGRAMADA'),
(5, 5,  '2025-10-12', '11:00',  'CANCELADA'),
(6, 6,  '2025-10-12', '11:30',  'PROGRAMADA'),
(7, 7,  '2025-10-13', '12:00',  'PROGRAMADA'),
(8, 8,  '2025-10-13', '12:30',  'REALIZADA'),
(9, 9,  '2025-10-14', '13:00',  'PROGRAMADA'),
(10,10, '2025-10-14', '15:00',  'PROGRAMADA'),
(11,11, '2025-10-15', '09:15',  'REALIZADA'),
(12,12, '2025-10-15', '09:45',  'PROGRAMADA'),
(13,13, '2025-10-16', '10:15',  'PROGRAMADA'),
(14,14, '2025-10-16', '10:45',  'CANCELADA'),
(15,15, '2025-10-17', '11:15',  'PROGRAMADA'),
(16,16, '2025-10-17', '11:45',  'PROGRAMADA'),
(17,17, '2025-10-18', '12:15',  'REALIZADA'),
(18,18, '2025-10-18', '12:45',  'PROGRAMADA'),
(19,19, '2025-10-19', '13:15',  'PROGRAMADA'),
(20,20, '2025-10-19', '13:45',  'PROGRAMADA');
