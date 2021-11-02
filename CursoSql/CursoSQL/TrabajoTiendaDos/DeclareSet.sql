/*Video 49 */
use Facturas
declare 
	@w_limite		smallint,
	@w_comienzo		smallint,
	@w_productoA	varchar(25),
	@w_productoB	varchar(25)



/*
Otra forma de dar valor a las varibles es: 
	set @w_limite = 12
	set @w_comienzo = 8
*/
select 
	@w_limite		=	12,
	@w_comienzo		=	8,
	@w_productoA	=	'Torre',
	@w_productoB	=	'Tarjeta%'
/*USO DE GOTO: HACE QUE SALTE A UNA DETERMINADA LINEA DEL SCRIPT*/
goto salta

select * from Producto where cantidad = @w_limite
select * from Producto where cantidad > @w_limite
select * from Producto where cantidad !> @w_limite
select * from Producto 
where cantidad between @w_comienzo and @w_limite
order by cantidad
/*El "salta:" es una etiqueta del goto declarado en la linea 10*/
salta:

select * from Producto where nombre like @w_productoA
select * from Producto where nombre like @w_productoB