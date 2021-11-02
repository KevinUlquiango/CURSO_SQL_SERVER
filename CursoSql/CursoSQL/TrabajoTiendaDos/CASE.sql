use Facturas

goto ejecucion

select Count(*) as TotalQueVivenEnCalles from Cliente
where direccion like '%calle%'

select Count(*) as TotalQueVivenEnAvenida from Cliente
where direccion like '%avenida%'

select Count(*) as TotalQueNoVivenEnCallesNiAvenidad from Cliente
where direccion not like '%calle%' and direccion not like '%avenida%'


/*CASE*/


select TipoDeDireccion, count (nombre) as Cliente
from
(
	select nombre, 
		/*then es entonces*/
		case 
			when direccion like '%calle%' then 'Calle'
			when direccion like '%avenida%' then 'Avenida'
		else 
			'Otro nombre'
		end as TipoDeDireccion
	from Cliente
)as subConsulta
group by TipoDeDireccion
------------------------------
/*Categorizar Productos*/
ejecucion:

select marca,'Tiene ' + CAST(count(nombre)as varchar) + ' Productos de gama ' + Tipo as Producto FROM
(
	select nombre,marca,precio, 
		case 
			when precio < 30 then 'Economica'
			when precio between  30 and 100 then 'Media'
			when precio > 100  then 'Alta'
		else 
			'No deberia Salir.ERROR!'
		end as Tipo
	from Producto where marca is not null
)as ContabilizarProductos
group by Tipo,marca
order by marca
