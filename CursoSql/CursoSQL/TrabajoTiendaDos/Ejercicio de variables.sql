/*

Variables

1) Utilizar variables en el informe de Marcas de Productos

*/

use Facturas

/*Variables*/

declare @w_nombre_producto	varchar(25),
		@w_valoracion		int

/*Declaracion de variables*/
select	@w_nombre_producto	= '%Televiso_n%',
		@w_valoracion		= 5

select 
	marca,
	year(fabricacion)			as		"Año",
	sum(cantidad *precio*10)	as		"VentasDelAño"
from Producto
where 
	fabricacion is not null and
	nombre not like @w_nombre_producto and
	(valoracion is not null and valoracion >= @w_valoracion)
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
			nombre not like @w_nombre_producto and
			(valoracion is not null and valoracion >= @w_valoracion)
		group by marca,year(fabricacion)
		having sum(cantidad *precio*10) > 7000
		-- order by year(fabricacion),marca
) AS TABLA1
GROUP BY marca
order by años desc

