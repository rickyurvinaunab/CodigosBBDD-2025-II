--p1
SELECT f.id_funcion, f.hora, s.formato, p.titulo
FROM Funcion f
JOIN Sala s        ON s.id_sala = f.id_sala
JOIN Pelicula p    ON p.codigo_pelicula = f.codigo_pelicula
WHERE f.fecha = DATE '2025-10-09'
ORDER BY f.hora ASC;
--p3
SELECT e.id_funcion,
       COUNT(*)      AS entradas_vendidas,
       SUM(e.precio) AS recaudacion
FROM Entrada e
GROUP BY e.id_funcion
ORDER BY recaudacion DESC;
--p3
-- a) Vista
CREATE OR REPLACE VIEW vw_funciones_especiales AS
SELECT f.id_funcion, f.fecha, f.hora, fe.tipo, p.titulo, s.formato
FROM Funcion_Especial fe
JOIN Funcion f    ON f.id_funcion = fe.id_funcion
JOIN Pelicula p   ON p.codigo_pelicula = f.codigo_pelicula
JOIN Sala s       ON s.id_sala = f.id_sala;

-- b) Consulta usando la vista
SELECT fecha, tipo, COUNT(*) AS funciones_especiales
FROM vw_funciones_especiales
GROUP BY fecha, tipo
ORDER BY fecha, tipo;

--p4
CREATE OR REPLACE FUNCTION butacas_disponibles(p_id_funcion INT)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
  v_capacidad INT;
  v_vendidas  INT;
BEGIN
  SELECT s.capacidad
    INTO v_capacidad
  FROM Funcion f
  JOIN Sala s ON s.id_sala = f.id_sala
  WHERE f.id_funcion = p_id_funcion;

  SELECT COUNT(*) INTO v_vendidas
  FROM Entrada
  WHERE id_funcion = p_id_funcion;

  RETURN v_capacidad - v_vendidas;
END;
$$;

-- b) prueba:
SELECT butacas_disponibles(10) AS disponibles;

--p5

CREATE OR REPLACE PROCEDURE vender_entrada(
  p_id_funcion     INT,
  p_rut_cliente    VARCHAR,
  p_numero_asiento INT,
  p_precio         NUMERIC,
  p_rut_empleado   VARCHAR
)
LANGUAGE plpgsql
AS $$
DECLARE
  v_capacidad INT;
  v_ocupado   INT;
  id_entrada_ INT;
BEGIN
  SELECT s.capacidad
    INTO v_capacidad
  FROM Funcion f
  JOIN Sala s ON s.id_sala = f.id_sala
  WHERE f.id_funcion = p_id_funcion;

  SELECT COUNT(*) INTO v_ocupado
  FROM Entrada
  WHERE id_funcion = p_id_funcion
    AND numero_asiento = p_numero_asiento;

  SELECT max(id_entrada) INTO id_entrada_
  from Entrada;


  INSERT INTO Entrada(id_entrada,id_funcion, rut_cliente, numero_asiento, precio, rut_empleado)
  VALUES(id_entrada_+1,p_id_funcion, p_rut_cliente, p_numero_asiento, p_precio, p_rut_empleado);
END;
$$;

-- llamado al procedimiento
CALL vender_entrada(10, 'R001', 25, 6500, 'R025');