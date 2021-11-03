/*Video 54
En este ejemplo me permite guardar los resultados obtenidos en una variable de tipo TABLE
*/
use Facturas

declare @w_miTabla table(
	dni			varchar(10)		not null,
	nombre		varchar(40)		not null,
	email		varchar(35)		null,
	edad		tinyint			null,
	direccion	varchar(40)		null
)
declare @w_miTablaUpdate table(
	dni			varchar(10)		not null,
	nombre		varchar(40)		not null,
	email		varchar(35)		null,
	edad		tinyint			null,
	direccion	varchar(40)		null
)


/*OUTPUT 
SALIDA
*/
delete from Cliente 
output deleted.* into @w_miTabla 
where dni like '123456789A'
select 'Registros eliminados: ' as Resultado, * from @w_miTabla

update Cliente
set email = 'pacho2.0@gmail.com'
output inserted.* into @w_miTablaUpdate
where dni like '333333333C'
select 'Registros Actualizados: ' as Resultado, * from @w_miTablaUpdate
