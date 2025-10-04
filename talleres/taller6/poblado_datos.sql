INSERT INTO clinica (nombre, email, direccion) VALUES
('Clínica Alemana', 'contacto@alemanadesantiago.cl', 'Av. Vitacura 5951, Vitacura'),
('Clínica Santa María', 'informaciones@santamaria.cl', 'Av. Santa María 0410, Providencia');

INSERT INTO medico (rut, nombres, apellidos, especialidad) VALUES
('14.123.456-7', 'Carolina', 'Rojas Pérez', 'Medicina Interna'),
('15.234.567-8', 'Diego', 'Muñoz Soto', 'Cardiología'),
('16.345.678-9', 'Valeria', 'Lagos Díaz', 'Pediatría');

INSERT INTO paciente (rut, nombres, apellidos, email) VALUES
('19.111.222-3', 'Ricardo', 'Urvina Córdova', 'ricardo@mail.com'),
('20.222.333-4', 'Ingrid', 'Zamora Reyes', 'ingrid@mail.com'),
('21.333.444-5', 'Mayra', 'López Vega', 'mayra@mail.com'),
('22.444.555-6', 'Javier', 'Pérez Díaz', 'javier@mail.com');

INSERT INTO medico_clinica (id_medico, id_clinica, horas) VALUES
(2, 1, 20),
(2, 2, 12),
(1, 1, 25),
(3, 2, 18);

INSERT INTO cita (id_medico_clinica, id_paciente, hora) VALUES
(3, 1, '09:30'), 
(1, 2, '10:00'),  
(2, 3, '11:15'), 
(4, 4, '15:00');