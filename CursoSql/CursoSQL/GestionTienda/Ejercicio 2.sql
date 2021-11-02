/*

Informe de Marcas de los Productos

1) Exponer un listado de las marcas, las fechas de fabricaci�n agrupadas por a�os y el total de ventas anual de los productos.

Evitar los datos de los televisores y los productos que han suspendido en valoraci�n.

Filtrar las mas exitosas seg�n hayan tenido mas de 7000 euros en ventas en productos de cada a�o. (Es un filtro de la agrupacion previa)

Info 1: Se realiza la suposici�n de que se han vendido 10 cajas de cada producto.

Info 2: El modificador que nos indica el a�o de un smalldatetime es YEAR()



2) A continuaci�n, en otro listado, ordenar las marcas de mayor a menor numero de a�os con esas ventas

Info 3: La clausula ORDER BY no es v�lida en subconsultas

*/
-- select * from Producto
use Facturas
select 
	marca,
	year(fabricacion)			as		"A�o",
	sum(cantidad *precio*10)	as		"VentasDelA�o"
from Producto
where 
	fabricacion is not null and
	nombre not like '%Televiso_n%' and
	(valoracion is not null and valoracion >=5)
group by marca,year(fabricacion)
having sum(cantidad *precio*10) > 7000
order by year(fabricacion),marca
/**************************************/
select 
	marca,count(A�O) AS A�OS,
	SUM (VentasDelA�o) AS TotalMarca
FROM
(
		select 
			marca,
			year(fabricacion)			as		"A�o",
			sum(cantidad *precio*10)	as		VentasDelA�o
		from Producto
		where 
			fabricacion is not null and
			nombre not like '%Televiso_n%' and
			(valoracion is not null and valoracion >=5)
		group by marca,year(fabricacion)
		having sum(cantidad *precio*10) > 7000
		-- order by year(fabricacion),marca
) AS TABLA1
GROUP BY marca
order by a�os desc