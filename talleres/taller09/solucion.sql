-- 1.	Listar todas las salas con id_sala, formato y capacidad, ordenadas de mayor a menor capacidad.

select *
from sala as sa
order by sa.capacidad DESC;

-- 2.	Obtener título y duración de películas de 'Chile', ordenadas alfabéticamente.
select pe.titulo, pe.duracion
from pelicula as pe
where pais_origen = 'Chile';

-- 3.	Mostrar las funciones del día de hoy con id_funcion, hora, título y formato.
select fu.id_funcion, fu.hora, pe.titulo, sa.formato
from funcion as fu
inner join pelicula as pe on fu.codigo_pelicula = pe.codigo_pelicula
inner join sala as sa on sa.id_sala = fu.id_sala
where fecha = CURRENT_DATE;
-- where fecha = '2025-11-13';

-- 4.	Listar los clientes (rut y nombre) que no han comprado entradas.
select cli.rut, pe.nombre
from cliente as cli
inner join persona as pe on pe.rut = cli.rut
left join entrada as en on en.rut_cliente = cli.rut
where id_entrada is null;

-- 5.	Para cada película, mostrar entradas vendidas y recaudación total; ordenar por recaudación descendente.
select pe.codigo_pelicula, COUNT(*) AS cantidad_entradas, sum(en.precio) as recaudacion
from pelicula as pe
inner join funcion as fu on fu.codigo_pelicula = pe.codigo_pelicula
inner join entrada as en on en.id_funcion = fu.id_funcion
group by pe.codigo_pelicula
order by recaudacion DESC;
-- 6.	Mostrar las funciones que no tienen entradas vendidas.
select fu.id_funcion, fu.fecha
from funcion as fu
left join entrada as en on en.id_funcion = fu.id_funcion
where en.id_entrada is null;
-- 7.	Para cada sala, calcular el porcentaje de ocupación promedio de sus funciones: entradas_vendidas / capacidad (en %).
select sa.id_sala, count(sa.id_sala) as entradas_vendidas, sa.capacidad as capacidad, concat((round(count(en.id_entrada)*100.0/sa.capacidad),1),'%') as promedio
from sala as sa
inner join funcion as fu on sa.id_sala = fu.id_sala
inner join entrada as en on en.id_funcion = fu.id_funcion
group by sa.id_sala;


-- 8.	Obtener los 10 clientes con más entradas compradas (rut, nombre, cantidad).
select cl.rut, count(*) as cant_entradas
from cliente as cl
inner join entrada as en on cl.rut = en.rut_cliente
group by cl.rut
order by cant_entradas DESC
limit 10;

-- 9.	Listar las funciones especiales con id_funcion, tipo, fecha, hora, título y formato.
select fe.id_funcion, fe.tipo, fu.fecha, fu.hora, pe.titulo, sa.formato
from funcion_especial fe
inner join funcion as fu on fe.id_funcion = fu.id_funcion
inner join pelicula as pe on pe.codigo_pelicula = fu.codigo_pelicula
inner join sala as sa on sa.id_sala = fu.id_sala;
-- 10.	Mostrar las películas que no tienen funciones programadas.
select *
from pelicula as pe
left join funcion as fu on pe.codigo_pelicula = fu.codigo_pelicula
where fu.id_funcion is null;
-- 11.	Por cada día, calcular la recaudación total (suma de precio) y mostrar solo días con recaudación > 100000 (GROUP BY + HAVING).
select fu.fecha, sum(en.precio) as recaudacion
from funcion as fu
inner join entrada as en on fu.id_funcion = en.id_funcion
group by fu.fecha
having sum(en.precio) > 100000
-- 12.	Crear una vista vw_boxoffice_diario(fecha, funciones, entradas, recaudacion) y luego usarla para obtener el top 3 de días con mayor recaudación.

create or replace view vw_boxoffice_diario(fecha, funciones, entradas, recaudacion) as
select fu.fecha, count(fu.id_funcion), count(en.id_entrada), sum(en.precio)
from funcion as fu
inner join entrada as en on fu.id_funcion = en.id_funcion
group by fu.fecha

-- uso de la vista
select *
from vw_boxoffice_diario
order by recaudacion desc
limit 3

-- 13.	Crear una función recaudacion_pelicula(cod TEXT) que retorne el monto total vendido para esa película; 
-- luego usarla en una consulta que liste codigo_pelicula, titulo y recaudacion_pelicula(codigo_pelicula).
create or replace function recaudacion_pelicula(cod TEXT)
returns numeric
language sql
as $$
	select sum(en.precio)
	from pelicula as pe
	inner join funcion  as fu on pe.codigo_pelicula = fu.codigo_pelicula
	inner join entrada as en on fu.id_funcion = en.id_funcion
	where pe.codigo_pelicula = cod
$$
-- uso de la funcion
select recaudacion_pelicula('P001')

-- 14.	Crear una función ocupacion_funcion(id INT) que retorne el % de ocupación (0–100) de una función; 
-- luego usarla para listar las 5 funciones con mayor ocupación.
create or replace function ocupacion_funcion(id_fun INT)
returns numeric
language sql
as $$
	select count(en.id_entrada)*100.0/sa.capacidad as promedio
	from sala as sa
	inner join funcion as fu on sa.id_sala = fu.id_sala
	inner join entrada as en on en.id_funcion = fu.id_funcion
	where fu.id_funcion = id_fun
	group by fu.id_funcion, sa.id_sala
$$

-- uso de la funcion
select fu.id_funcion, fu.fecha, fu.hora,ocupacion_funcion(fu.id_funcion) AS porcentaje_ocupacion
from funcion fu
order by porcentaje_ocupacion desc
limit 5;

-- 15.	Crear un procedimiento marcar_funcion_especial(id_funcion INT, p_tipo TEXT) que inserte/actualice en Funcion_Especial; 
-- luego usarlo para marcar varias funciones.

CREATE OR REPLACE PROCEDURE marcar_funcion_especial(
    IN id_fun INT,
    IN fe_tipo       TEXT
)
LANGUAGE plpgsql
AS $$
DECLARE
    v_cantidad INT;
BEGIN
    SELECT COUNT(*) 
    INTO v_cantidad
    FROM funcion_especial
    WHERE id_funcion = id_fun;
    IF v_cantidad = 0 THEN
        INSERT INTO funcion_especial(id_funcion, tipo)
        VALUES (id_fun, fe_tipo);
    ELSE
        UPDATE funcion_especial
        SET tipo = fe_tipo
        WHERE id_funcion = id_fun;
    END IF;
END;
$$;

CALL marcar_funcion_especial(1, 'estreno');
CALL marcar_funcion_especial(2, 'pre/estreno');
CALL marcar_funcion_especial(10, 're-estreno');
