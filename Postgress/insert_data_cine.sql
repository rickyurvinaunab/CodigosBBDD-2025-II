-- 50 SALAS
INSERT INTO Sala (capacidad, formato)
SELECT (50 + s), CASE WHEN s % 3 = 0 THEN '2D' WHEN s % 3 = 1 THEN '3D' ELSE 'IMAX' END
FROM generate_series(1,50) s;

-- 50 PELÍCULAS
INSERT INTO Pelicula (codigo_pelicula, titulo, duracion, pais_origen)
SELECT
  'PEL'||LPAD(s::text,3,'0'),
  'Pelicula '||s,
  (80 + (s % 60)),
  CASE WHEN s % 4=0 THEN 'Chile' WHEN s % 4=1 THEN 'EEUU' WHEN s % 4=2 THEN 'España' ELSE 'Francia' END
FROM generate_series(1,50) s;

-- 100 PERSONAS
INSERT INTO Persona (rut, nombre)
SELECT 'RUT'||LPAD(s::text,3,'0'), 'Persona '||s
FROM generate_series(1,100) s;

-- 50 CLIENTES
INSERT INTO Cliente (rut, fecha_registro)
SELECT 'RUT'||LPAD(s::text,3,'0'), DATE '2023-01-01' + (s || ' days')::interval
FROM generate_series(1,50) s;

-- 50 EMPLEADOS
INSERT INTO Empleado (rut, cargo, id_sala)
SELECT 'RUT'||LPAD((50+s)::text,3,'0'),
       CASE WHEN s % 3=0 THEN 'Cajero' WHEN s % 3=1 THEN 'Proyeccionista' ELSE 'Supervisor' END,
       ((s % 50)+1)
FROM generate_series(1,50) s;

-- 50 FUNCIONES
INSERT INTO Funcion (fecha, hora, id_sala, codigo_pelicula)
SELECT
  DATE '2024-01-01' + (s || ' days')::interval,
  TIME '18:00' + (s || ' minutes')::interval,
  ((s % 50)+1),
  'PEL'||LPAD(((s % 50)+1)::text,3,'0')
FROM generate_series(1,50) s;

-- 20 FUNCIONES ESPECIALES
INSERT INTO Funcion_Especial (id_funcion, tipo)
SELECT id_funcion,
       CASE WHEN id_funcion % 2=0 THEN 'Avant Premiere' ELSE 'Función Benéfica' END
FROM Funcion
WHERE id_funcion <=20;

-- 100 ENTRADAS
INSERT INTO Entrada (id_funcion, rut_cliente, numero_asiento, precio, rut_empleado)
SELECT f.id_funcion,
       'RUT'||LPAD(((f.id_funcion % 50)+1)::text,3,'0'),
       e,
       5000 + (f.id_funcion*10),
       'RUT'||LPAD((50+((f.id_funcion % 50)+1))::text,3,'0')
FROM Funcion f
JOIN generate_series(1,2) e ON true;