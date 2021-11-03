use Facturas

declare @w_dniCompra varchar(10)

select @w_dniCompra = '333334444I'

select * from Pedido where dni = @w_dniCompra
/*IN && NOT IN*/
select * from Encargo where pedID in (
									select pedID from Pedido 
									where dni like @w_dniCompra
									)

/*
---ANY
Retorna los resultados si alguno de datos se encuentra  por encima o por
debajo del primer parametro de busqueda
*/
select * from Encargo where pedID > any (
									select pedID from Pedido 
									where dni like @w_dniCompra
									)

/*
--ALL
Hace que retorne los resultados que se encuentran ya sea por encima o por debajo de todos 
los resultados de ka consulta que se realiza despues del where
*/
select * from Encargo where pedID > all (
									select pedID from Pedido 
									where dni like @w_dniCompra
									)