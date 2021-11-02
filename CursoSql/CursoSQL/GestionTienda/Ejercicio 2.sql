/*

Informe de Marcas de los Productos

1) Exponer un listado de las marcas, las fechas de fabricación agrupadas por años y el total de ventas anual de los productos.

Evitar los datos de los televisores y los productos que han suspendido en valoración.

Filtrar las mas exitosas según hayan tenido mas de 7000 euros en ventas en productos de cada año. (Es un filtro de la agrupacion previa)

Info 1: Se realiza la suposición de que se han vendido 10 cajas de cada producto.

Info 2: El modificador que nos indica el año de un smalldatetime es YEAR()



2) A continuación, en otro listado, ordenar las marcas de mayor a menor numero de años con esas ventas

Info 3: La clausula ORDER BY no es válida en subconsultas

*/
-- select * from Producto
use Facturas
select 
	marca,
	year(fabricacion)			as		"Año",
	sum(cantidad *precio*10)	as		"VentasDelAño"
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
	marca,count(AÑO) AS AÑOS,
	SUM (VentasDelAño) AS TotalMarca
FROM
(
		select 
			marca,
			year(fabricacion)			as		"Año",
			sum(cantidad *precio*10)	as		VentasDelAño
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
order by años desc