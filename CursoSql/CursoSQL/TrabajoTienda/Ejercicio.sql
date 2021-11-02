/*
1) Insertar cuatro nuevos productos "Monitor" con los campos que se quieran.

Eliminar de la base de datos los monitores descatalogados, considerando aquellos modelos que no son de este año 2020 o bien no tienen fecha de fabricación 

Si hay algún pedido con uno de esos monitores descatalogados, modificar el pedido ofertando al cliente uno de los nuevos.

Info 1: Sintaxis simplificada INSERT INTO: 
INSERT INTO <tabla o alias> VALUES 
(<columnas separadas por comas 1>),
(<columnas separada por comas 2>),
...
(<columnas separadas por comas N>)

2) Ha pasado un año, modificar la edad de los clientes

*/
use Facturas
select * from Producto

insert into Producto 
select 
	'Monitor' as nombre,
	50 as precio,
	'Venom' as modelo,
	'Samsung' as marca,
	5 as cantidad,
	CURRENT_TIMESTAMP as fabricacion,
	7 as valoracion
union
select 
	'Monitor' as nombre,
	502 as precio,
	'Venom1' as modelo,
	'Samsung1' as marca,
	52 as cantidad,
	CURRENT_TIMESTAMP as fabricacion,
	9 as valoracion
union
select 
	'Monitor' as nombre,
	502 as precio,
	'Venom2' as modelo,
	'Samsung2' as marca,
	52 as cantidad,
	CURRENT_TIMESTAMP as fabricacion,
	9 as valoracion
union
select 
	'Monitor' as nombre,
	552 as precio,
	'Venom3' as modelo,
	'Samsung3' as marca,
	52 as cantidad,
	CURRENT_TIMESTAMP as fabricacion,
	9 as valoracion

delete from Producto where  year(fabricacion) = 2021 and nombre = 'Monitor'

select * from Cliente where edad is not null

update Cliente
set edad = edad+1
where edad is not null


