--
-- TOC entry 3836 (class 0 OID 18320)
-- Dependencies: 212
-- Data for Name: persona; Type: TABLE DATA; Schema: public; Owner: ricardourvina
--

INSERT INTO public.persona (rut, nombre) VALUES ('R001', 'Ana Torres');
INSERT INTO public.persona (rut, nombre) VALUES ('R002', 'Bruno Díaz');
INSERT INTO public.persona (rut, nombre) VALUES ('R003', 'Carla Mena');
INSERT INTO public.persona (rut, nombre) VALUES ('R004', 'Diego Pérez');
INSERT INTO public.persona (rut, nombre) VALUES ('R005', 'Elisa Rojas');
INSERT INTO public.persona (rut, nombre) VALUES ('R006', 'Fernando Lara');
INSERT INTO public.persona (rut, nombre) VALUES ('R007', 'Gabriela Silva');
INSERT INTO public.persona (rut, nombre) VALUES ('R008', 'Héctor Fuentes');
INSERT INTO public.persona (rut, nombre) VALUES ('R009', 'Isabel Soto');
INSERT INTO public.persona (rut, nombre) VALUES ('R010', 'Javier Pino');
INSERT INTO public.persona (rut, nombre) VALUES ('R011', 'Karla Núñez');
INSERT INTO public.persona (rut, nombre) VALUES ('R012', 'Luis Campos');
INSERT INTO public.persona (rut, nombre) VALUES ('R013', 'María Jara');
INSERT INTO public.persona (rut, nombre) VALUES ('R014', 'Nicolás Peña');
INSERT INTO public.persona (rut, nombre) VALUES ('R015', 'Olga Yáñez');
INSERT INTO public.persona (rut, nombre) VALUES ('R016', 'Pablo Vega');
INSERT INTO public.persona (rut, nombre) VALUES ('R017', 'Queralt Vidal');
INSERT INTO public.persona (rut, nombre) VALUES ('R018', 'Raúl Contreras');
INSERT INTO public.persona (rut, nombre) VALUES ('R019', 'Sofía Guzmán');
INSERT INTO public.persona (rut, nombre) VALUES ('R020', 'Tomás Arias');
INSERT INTO public.persona (rut, nombre) VALUES ('R021', 'Ursula Reyes');
INSERT INTO public.persona (rut, nombre) VALUES ('R022', 'Vicente Mora');
INSERT INTO public.persona (rut, nombre) VALUES ('R023', 'Waldo Paredes');
INSERT INTO public.persona (rut, nombre) VALUES ('R024', 'Ximena Palma');
INSERT INTO public.persona (rut, nombre) VALUES ('R025', 'Yolanda Cruz');
INSERT INTO public.persona (rut, nombre) VALUES ('R026', 'Zoe Riquelme');
INSERT INTO public.persona (rut, nombre) VALUES ('R027', 'Rodrigo Díaz');
INSERT INTO public.persona (rut, nombre) VALUES ('R028', 'Camila Ramírez');
INSERT INTO public.persona (rut, nombre) VALUES ('R029', 'Ignacio Beltrán');
INSERT INTO public.persona (rut, nombre) VALUES ('R030', 'Daniela Muñoz');


--
-- TOC entry 3837 (class 0 OID 18325)
-- Dependencies: 213
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: ricardourvina
--

INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R001', '2025-05-10');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R002', '2025-05-12');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R003', '2025-05-15');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R004', '2025-05-20');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R005', '2025-05-25');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R006', '2025-06-01');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R007', '2025-06-05');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R008', '2025-06-10');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R009', '2025-06-15');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R010', '2025-06-20');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R011', '2025-06-25');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R012', '2025-07-01');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R013', '2025-07-05');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R014', '2025-07-10');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R015', '2025-07-15');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R016', '2025-07-20');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R017', '2025-07-25');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R018', '2025-08-01');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R019', '2025-08-05');
INSERT INTO public.cliente (rut, fecha_registro) VALUES ('R020', '2025-08-10');


--
-- TOC entry 3834 (class 0 OID 18307)
-- Dependencies: 210
-- Data for Name: sala; Type: TABLE DATA; Schema: public; Owner: ricardourvina
--

INSERT INTO public.sala (id_sala, capacidad, formato) VALUES (1, 120, '2D');
INSERT INTO public.sala (id_sala, capacidad, formato) VALUES (2, 150, '3D');
INSERT INTO public.sala (id_sala, capacidad, formato) VALUES (3, 100, '2D');
INSERT INTO public.sala (id_sala, capacidad, formato) VALUES (4, 180, 'IMAX');
INSERT INTO public.sala (id_sala, capacidad, formato) VALUES (5, 140, '2D');
INSERT INTO public.sala (id_sala, capacidad, formato) VALUES (6, 160, '3D');
INSERT INTO public.sala (id_sala, capacidad, formato) VALUES (7, 200, 'IMAX');
INSERT INTO public.sala (id_sala, capacidad, formato) VALUES (8, 110, '2D');
INSERT INTO public.sala (id_sala, capacidad, formato) VALUES (9, 130, '3D');
INSERT INTO public.sala (id_sala, capacidad, formato) VALUES (10, 170, '2D');


--
-- TOC entry 3838 (class 0 OID 18335)
-- Dependencies: 214
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: ricardourvina
--

INSERT INTO public.empleado (rut, cargo, id_sala) VALUES ('R021', 'Cajero', 1);
INSERT INTO public.empleado (rut, cargo, id_sala) VALUES ('R022', 'Cajero', 2);
INSERT INTO public.empleado (rut, cargo, id_sala) VALUES ('R023', 'Supervisor', 3);
INSERT INTO public.empleado (rut, cargo, id_sala) VALUES ('R024', 'Proyectorista', 4);
INSERT INTO public.empleado (rut, cargo, id_sala) VALUES ('R025', 'Cajero', 5);
INSERT INTO public.empleado (rut, cargo, id_sala) VALUES ('R026', 'Supervisor', 6);
INSERT INTO public.empleado (rut, cargo, id_sala) VALUES ('R027', 'Cajero', 7);
INSERT INTO public.empleado (rut, cargo, id_sala) VALUES ('R028', 'Proyectorista', 8);
INSERT INTO public.empleado (rut, cargo, id_sala) VALUES ('R029', 'Cajero', 9);
INSERT INTO public.empleado (rut, cargo, id_sala) VALUES ('R030', 'Supervisor', 10);


--
-- TOC entry 3835 (class 0 OID 18314)
-- Dependencies: 211
-- Data for Name: pelicula; Type: TABLE DATA; Schema: public; Owner: ricardourvina
--

INSERT INTO public.pelicula (codigo_pelicula, titulo, duracion, pais_origen) VALUES ('P001', 'Horizonte Azul', 120, 'Chile');
INSERT INTO public.pelicula (codigo_pelicula, titulo, duracion, pais_origen) VALUES ('P002', 'Ecos del Viento', 105, 'Argentina');
INSERT INTO public.pelicula (codigo_pelicula, titulo, duracion, pais_origen) VALUES ('P003', 'Código Latente', 112, 'Chile');
INSERT INTO public.pelicula (codigo_pelicula, titulo, duracion, pais_origen) VALUES ('P004', 'Reloj de Arena', 98, 'Perú');
INSERT INTO public.pelicula (codigo_pelicula, titulo, duracion, pais_origen) VALUES ('P005', 'Vector Infinito', 130, 'México');
INSERT INTO public.pelicula (codigo_pelicula, titulo, duracion, pais_origen) VALUES ('P006', 'Última Estación', 115, 'España');
INSERT INTO public.pelicula (codigo_pelicula, titulo, duracion, pais_origen) VALUES ('P007', 'Luz y Sombra', 101, 'Chile');
INSERT INTO public.pelicula (codigo_pelicula, titulo, duracion, pais_origen) VALUES ('P008', 'El Umbral', 123, 'USA');
INSERT INTO public.pelicula (codigo_pelicula, titulo, duracion, pais_origen) VALUES ('P009', 'Memoria de Acero', 117, 'Brasil');
INSERT INTO public.pelicula (codigo_pelicula, titulo, duracion, pais_origen) VALUES ('P010', 'Puertas Adentro', 99, 'Chile');
INSERT INTO public.pelicula (codigo_pelicula, titulo, duracion, pais_origen) VALUES ('P011', 'Mar de Datos', 111, 'Colombia');
INSERT INTO public.pelicula (codigo_pelicula, titulo, duracion, pais_origen) VALUES ('P012', 'Después de Medianoche', 124, 'Chile');
INSERT INTO public.pelicula (codigo_pelicula, titulo, duracion, pais_origen) VALUES ('P013', 'Documental Andino', 90, 'Chile');
INSERT INTO public.pelicula (codigo_pelicula, titulo, duracion, pais_origen) VALUES ('P014', 'Animación del Sur', 88, 'Chile');
INSERT INTO public.pelicula (codigo_pelicula, titulo, duracion, pais_origen) VALUES ('P015', 'Ópera Primera', 95, 'Argentina');


--
-- TOC entry 3840 (class 0 OID 18351)
-- Dependencies: 216
-- Data for Name: funcion; Type: TABLE DATA; Schema: public; Owner: ricardourvina
--

INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (1, '2025-10-01', '18:00:00', 1, 'P001');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (2, '2025-10-01', '20:30:00', 1, 'P002');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (3, '2025-10-01', '22:45:00', 2, 'P003');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (4, '2025-10-02', '18:00:00', 2, 'P004');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (5, '2025-10-02', '20:30:00', 3, 'P005');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (6, '2025-10-02', '22:45:00', 3, 'P006');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (7, '2025-10-03', '18:00:00', 4, 'P007');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (8, '2025-10-03', '20:30:00', 4, 'P008');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (9, '2025-10-03', '22:45:00', 5, 'P009');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (10, '2025-10-04', '18:00:00', 5, 'P010');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (11, '2025-10-04', '20:30:00', 6, 'P011');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (12, '2025-10-04', '22:45:00', 6, 'P012');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (13, '2025-10-05', '18:00:00', 7, 'P001');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (14, '2025-10-05', '20:30:00', 7, 'P002');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (15, '2025-10-05', '22:45:00', 8, 'P003');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (16, '2025-10-06', '18:00:00', 8, 'P004');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (17, '2025-10-06', '20:30:00', 9, 'P005');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (18, '2025-10-06', '22:45:00', 9, 'P006');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (19, '2025-10-07', '18:00:00', 10, 'P007');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (20, '2025-10-07', '20:30:00', 10, 'P008');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (21, '2025-10-07', '22:45:00', 1, 'P009');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (22, '2025-10-08', '18:00:00', 2, 'P010');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (23, '2025-10-08', '20:30:00', 3, 'P011');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (24, '2025-10-08', '22:45:00', 4, 'P012');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (25, '2025-10-09', '18:00:00', 5, 'P001');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (26, '2025-10-09', '20:30:00', 6, 'P002');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (27, '2025-10-09', '22:45:00', 7, 'P003');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (28, '2025-10-10', '18:00:00', 8, 'P004');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (29, '2025-10-10', '20:30:00', 9, 'P005');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (30, '2025-10-10', '22:45:00', 10, 'P006');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (31, '2025-10-11', '18:00:00', 1, 'P007');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (32, '2025-10-11', '20:30:00', 2, 'P008');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (33, '2025-10-11', '22:45:00', 3, 'P009');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (34, '2025-10-12', '18:00:00', 4, 'P010');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (35, '2025-10-12', '20:30:00', 5, 'P011');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (36, '2025-10-12', '22:45:00', 6, 'P012');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (37, '2025-10-13', '18:00:00', 7, 'P001');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (38, '2025-10-13', '20:30:00', 8, 'P002');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (39, '2025-10-13', '22:45:00', 9, 'P003');
INSERT INTO public.funcion (id_funcion, fecha, hora, id_sala, codigo_pelicula) VALUES (40, '2025-10-14', '18:00:00', 10, 'P004');


--
-- TOC entry 3843 (class 0 OID 18380)
-- Dependencies: 219
-- Data for Name: entrada; Type: TABLE DATA; Schema: public; Owner: ricardourvina
--

INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (1, 1, 'R001', 1, 5600.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (2, 1, 'R002', 2, 6100.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (3, 1, 'R003', 3, 6600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (4, 1, 'R004', 4, 7100.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (5, 1, 'R005', 5, 5100.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (6, 1, 'R006', 6, 5600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (7, 2, 'R007', 1, 5700.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (8, 2, 'R008', 2, 6200.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (9, 2, 'R009', 3, 6700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (10, 2, 'R010', 4, 7200.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (11, 2, 'R011', 5, 5200.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (12, 2, 'R012', 6, 5700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (13, 2, 'R013', 7, 6200.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (14, 3, 'R014', 1, 5500.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (15, 3, 'R015', 2, 6000.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (16, 3, 'R001', 3, 6500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (17, 3, 'R002', 4, 7000.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (18, 3, 'R003', 5, 5000.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (19, 3, 'R004', 6, 5500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (20, 3, 'R005', 7, 6000.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (21, 3, 'R006', 8, 6500.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (22, 4, 'R007', 1, 5600.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (23, 4, 'R008', 2, 6100.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (24, 4, 'R009', 3, 6600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (25, 4, 'R010', 4, 7100.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (26, 4, 'R011', 5, 5100.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (27, 4, 'R012', 6, 5600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (28, 4, 'R013', 7, 6100.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (29, 4, 'R014', 8, 6600.00, 'R029');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (30, 4, 'R015', 9, 7100.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (31, 5, 'R001', 1, 5700.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (32, 5, 'R002', 2, 6200.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (33, 5, 'R003', 3, 6700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (34, 5, 'R004', 4, 7200.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (35, 5, 'R005', 5, 5200.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (36, 5, 'R006', 6, 5700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (37, 5, 'R007', 7, 6200.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (38, 5, 'R008', 8, 6700.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (39, 5, 'R009', 9, 7200.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (40, 5, 'R010', 10, 5200.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (41, 6, 'R011', 1, 5500.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (42, 6, 'R012', 2, 6000.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (43, 6, 'R013', 3, 6500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (44, 6, 'R014', 4, 7000.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (45, 6, 'R015', 5, 5000.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (46, 7, 'R001', 1, 5600.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (47, 7, 'R002', 2, 6100.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (48, 7, 'R003', 3, 6600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (49, 7, 'R004', 4, 7100.00, 'R029');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (50, 7, 'R005', 5, 5100.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (51, 7, 'R006', 6, 5600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (52, 8, 'R007', 1, 5700.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (53, 8, 'R008', 2, 6200.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (54, 8, 'R009', 3, 6700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (55, 8, 'R010', 4, 7200.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (56, 8, 'R011', 5, 5200.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (57, 8, 'R012', 6, 5700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (58, 8, 'R013', 7, 6200.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (59, 9, 'R014', 1, 5500.00, 'R029');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (60, 9, 'R015', 2, 6000.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (61, 9, 'R001', 3, 6500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (62, 9, 'R002', 4, 7000.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (63, 9, 'R003', 5, 5000.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (64, 9, 'R004', 6, 5500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (65, 9, 'R005', 7, 6000.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (66, 9, 'R006', 8, 6500.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (67, 10, 'R007', 1, 5600.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (68, 10, 'R008', 2, 6100.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (69, 10, 'R009', 3, 6600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (70, 10, 'R010', 4, 7100.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (71, 10, 'R011', 5, 5100.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (72, 10, 'R012', 6, 5600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (73, 10, 'R013', 7, 6100.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (74, 10, 'R014', 8, 6600.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (75, 10, 'R015', 9, 7100.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (76, 11, 'R001', 1, 5700.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (77, 11, 'R002', 2, 6200.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (78, 11, 'R003', 3, 6700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (79, 11, 'R004', 4, 7200.00, 'R029');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (80, 11, 'R005', 5, 5200.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (81, 11, 'R006', 6, 5700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (82, 11, 'R007', 7, 6200.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (83, 11, 'R008', 8, 6700.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (84, 11, 'R009', 9, 7200.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (85, 11, 'R010', 10, 5200.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (86, 12, 'R011', 1, 5500.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (87, 12, 'R012', 2, 6000.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (88, 12, 'R013', 3, 6500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (89, 12, 'R014', 4, 7000.00, 'R029');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (90, 12, 'R015', 5, 5000.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (91, 13, 'R001', 1, 5600.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (92, 13, 'R002', 2, 6100.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (93, 13, 'R003', 3, 6600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (94, 13, 'R004', 4, 7100.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (95, 13, 'R005', 5, 5100.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (96, 13, 'R006', 6, 5600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (97, 14, 'R007', 1, 5700.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (98, 14, 'R008', 2, 6200.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (99, 14, 'R009', 3, 6700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (100, 14, 'R010', 4, 7200.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (101, 14, 'R011', 5, 5200.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (102, 14, 'R012', 6, 5700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (103, 14, 'R013', 7, 6200.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (104, 15, 'R014', 1, 5500.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (105, 15, 'R015', 2, 6000.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (106, 15, 'R001', 3, 6500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (107, 15, 'R002', 4, 7000.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (108, 15, 'R003', 5, 5000.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (109, 15, 'R004', 6, 5500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (110, 15, 'R005', 7, 6000.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (111, 15, 'R006', 8, 6500.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (112, 16, 'R007', 1, 5600.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (113, 16, 'R008', 2, 6100.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (114, 16, 'R009', 3, 6600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (115, 16, 'R010', 4, 7100.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (116, 16, 'R011', 5, 5100.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (117, 16, 'R012', 6, 5600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (118, 16, 'R013', 7, 6100.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (119, 16, 'R014', 8, 6600.00, 'R029');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (120, 16, 'R015', 9, 7100.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (121, 17, 'R001', 1, 5700.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (122, 17, 'R002', 2, 6200.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (123, 17, 'R003', 3, 6700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (124, 17, 'R004', 4, 7200.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (125, 17, 'R005', 5, 5200.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (126, 17, 'R006', 6, 5700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (127, 17, 'R007', 7, 6200.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (128, 17, 'R008', 8, 6700.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (129, 17, 'R009', 9, 7200.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (130, 17, 'R010', 10, 5200.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (131, 18, 'R011', 1, 5500.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (132, 18, 'R012', 2, 6000.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (133, 18, 'R013', 3, 6500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (134, 18, 'R014', 4, 7000.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (135, 18, 'R015', 5, 5000.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (136, 19, 'R001', 1, 5600.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (137, 19, 'R002', 2, 6100.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (138, 19, 'R003', 3, 6600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (139, 19, 'R004', 4, 7100.00, 'R029');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (140, 19, 'R005', 5, 5100.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (141, 19, 'R006', 6, 5600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (142, 20, 'R007', 1, 5700.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (143, 20, 'R008', 2, 6200.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (144, 20, 'R009', 3, 6700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (145, 20, 'R010', 4, 7200.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (146, 20, 'R011', 5, 5200.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (147, 20, 'R012', 6, 5700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (148, 20, 'R013', 7, 6200.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (149, 21, 'R014', 1, 5500.00, 'R029');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (150, 21, 'R015', 2, 6000.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (151, 21, 'R001', 3, 6500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (152, 21, 'R002', 4, 7000.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (153, 21, 'R003', 5, 5000.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (154, 21, 'R004', 6, 5500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (155, 21, 'R005', 7, 6000.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (156, 21, 'R006', 8, 6500.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (157, 22, 'R007', 1, 5600.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (158, 22, 'R008', 2, 6100.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (159, 22, 'R009', 3, 6600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (160, 22, 'R010', 4, 7100.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (161, 22, 'R011', 5, 5100.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (162, 22, 'R012', 6, 5600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (163, 22, 'R013', 7, 6100.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (164, 22, 'R014', 8, 6600.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (165, 22, 'R015', 9, 7100.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (166, 23, 'R001', 1, 5700.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (167, 23, 'R002', 2, 6200.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (168, 23, 'R003', 3, 6700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (169, 23, 'R004', 4, 7200.00, 'R029');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (170, 23, 'R005', 5, 5200.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (171, 23, 'R006', 6, 5700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (172, 23, 'R007', 7, 6200.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (173, 23, 'R008', 8, 6700.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (174, 23, 'R009', 9, 7200.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (175, 23, 'R010', 10, 5200.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (176, 24, 'R011', 1, 5500.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (177, 24, 'R012', 2, 6000.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (178, 24, 'R013', 3, 6500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (179, 24, 'R014', 4, 7000.00, 'R029');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (180, 24, 'R015', 5, 5000.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (181, 25, 'R001', 1, 5600.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (182, 25, 'R002', 2, 6100.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (183, 25, 'R003', 3, 6600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (184, 25, 'R004', 4, 7100.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (185, 25, 'R005', 5, 5100.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (186, 25, 'R006', 6, 5600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (187, 26, 'R007', 1, 5700.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (188, 26, 'R008', 2, 6200.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (189, 26, 'R009', 3, 6700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (190, 26, 'R010', 4, 7200.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (191, 26, 'R011', 5, 5200.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (192, 26, 'R012', 6, 5700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (193, 26, 'R013', 7, 6200.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (194, 27, 'R014', 1, 5500.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (195, 27, 'R015', 2, 6000.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (196, 27, 'R001', 3, 6500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (197, 27, 'R002', 4, 7000.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (198, 27, 'R003', 5, 5000.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (199, 27, 'R004', 6, 5500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (200, 27, 'R005', 7, 6000.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (201, 27, 'R006', 8, 6500.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (202, 28, 'R007', 1, 5600.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (203, 28, 'R008', 2, 6100.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (204, 28, 'R009', 3, 6600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (205, 28, 'R010', 4, 7100.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (206, 28, 'R011', 5, 5100.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (207, 28, 'R012', 6, 5600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (208, 28, 'R013', 7, 6100.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (209, 28, 'R014', 8, 6600.00, 'R029');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (210, 28, 'R015', 9, 7100.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (211, 29, 'R001', 1, 5700.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (212, 29, 'R002', 2, 6200.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (213, 29, 'R003', 3, 6700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (214, 29, 'R004', 4, 7200.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (215, 29, 'R005', 5, 5200.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (216, 29, 'R006', 6, 5700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (217, 29, 'R007', 7, 6200.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (218, 29, 'R008', 8, 6700.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (219, 29, 'R009', 9, 7200.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (220, 29, 'R010', 10, 5200.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (221, 30, 'R011', 1, 5500.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (222, 30, 'R012', 2, 6000.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (223, 30, 'R013', 3, 6500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (224, 30, 'R014', 4, 7000.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (225, 30, 'R015', 5, 5000.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (226, 31, 'R001', 1, 5600.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (227, 31, 'R002', 2, 6100.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (228, 31, 'R003', 3, 6600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (229, 31, 'R004', 4, 7100.00, 'R029');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (230, 31, 'R005', 5, 5100.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (231, 31, 'R006', 6, 5600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (232, 32, 'R007', 1, 5700.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (233, 32, 'R008', 2, 6200.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (234, 32, 'R009', 3, 6700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (235, 32, 'R010', 4, 7200.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (236, 32, 'R011', 5, 5200.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (237, 32, 'R012', 6, 5700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (238, 32, 'R013', 7, 6200.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (239, 33, 'R014', 1, 5500.00, 'R029');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (240, 33, 'R015', 2, 6000.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (241, 33, 'R001', 3, 6500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (242, 33, 'R002', 4, 7000.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (243, 33, 'R003', 5, 5000.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (244, 33, 'R004', 6, 5500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (245, 33, 'R005', 7, 6000.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (246, 33, 'R006', 8, 6500.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (247, 34, 'R007', 1, 5600.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (248, 34, 'R008', 2, 6100.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (249, 34, 'R009', 3, 6600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (250, 34, 'R010', 4, 7100.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (251, 34, 'R011', 5, 5100.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (252, 34, 'R012', 6, 5600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (253, 34, 'R013', 7, 6100.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (254, 34, 'R014', 8, 6600.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (255, 34, 'R015', 9, 7100.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (256, 35, 'R001', 1, 5700.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (257, 35, 'R002', 2, 6200.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (258, 35, 'R003', 3, 6700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (259, 35, 'R004', 4, 7200.00, 'R029');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (260, 35, 'R005', 5, 5200.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (261, 35, 'R006', 6, 5700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (262, 35, 'R007', 7, 6200.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (263, 35, 'R008', 8, 6700.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (264, 35, 'R009', 9, 7200.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (265, 35, 'R010', 10, 5200.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (266, 36, 'R011', 1, 5500.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (267, 36, 'R012', 2, 6000.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (268, 36, 'R013', 3, 6500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (269, 36, 'R014', 4, 7000.00, 'R029');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (270, 36, 'R015', 5, 5000.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (271, 37, 'R001', 1, 5600.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (272, 37, 'R002', 2, 6100.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (273, 37, 'R003', 3, 6600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (274, 37, 'R004', 4, 7100.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (275, 37, 'R005', 5, 5100.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (276, 37, 'R006', 6, 5600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (277, 38, 'R007', 1, 5700.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (278, 38, 'R008', 2, 6200.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (279, 38, 'R009', 3, 6700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (280, 38, 'R010', 4, 7200.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (281, 38, 'R011', 5, 5200.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (282, 38, 'R012', 6, 5700.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (283, 38, 'R013', 7, 6200.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (284, 39, 'R014', 1, 5500.00, 'R024');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (285, 39, 'R015', 2, 6000.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (286, 39, 'R001', 3, 6500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (287, 39, 'R002', 4, 7000.00, 'R027');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (288, 39, 'R003', 5, 5000.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (289, 39, 'R004', 6, 5500.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (290, 39, 'R005', 7, 6000.00, 'R030');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (291, 39, 'R006', 8, 6500.00, 'R021');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (292, 40, 'R007', 1, 5600.00, 'R022');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (293, 40, 'R008', 2, 6100.00, 'R023');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (294, 40, 'R009', 3, 6600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (295, 40, 'R010', 4, 7100.00, 'R025');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (296, 40, 'R011', 5, 5100.00, 'R026');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (297, 40, 'R012', 6, 5600.00, NULL);
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (298, 40, 'R013', 7, 6100.00, 'R028');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (299, 40, 'R014', 8, 6600.00, 'R029');
INSERT INTO public.entrada (id_entrada, id_funcion, rut_cliente, numero_asiento, precio, rut_empleado) VALUES (300, 40, 'R015', 9, 7100.00, NULL);


--
-- TOC entry 3841 (class 0 OID 18369)
-- Dependencies: 217
-- Data for Name: funcion_especial; Type: TABLE DATA; Schema: public; Owner: ricardourvina
--

INSERT INTO public.funcion_especial (id_funcion, tipo) VALUES (2, 'Avant Premiere');
INSERT INTO public.funcion_especial (id_funcion, tipo) VALUES (7, 'Re-estreno');
INSERT INTO public.funcion_especial (id_funcion, tipo) VALUES (15, 'Maratón');
INSERT INTO public.funcion_especial (id_funcion, tipo) VALUES (23, 'Beneficencia');
INSERT INTO public.funcion_especial (id_funcion, tipo) VALUES (31, 'Aniversario');
