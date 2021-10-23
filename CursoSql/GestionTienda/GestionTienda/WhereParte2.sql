use Facturas
/*Igual*/
select* from Producto where cantidad = 10
/*Mayores*/
select * from Producto where cantidad <= 10 order by cantidad
/*Distinto*/
-- !=
-- <>
select * from Producto where cantidad != 10 order by cantidad 
select * from Producto where cantidad <> 10 order by cantidad 
/*Limites*/
select * from Producto where cantidad between 6 and 9
-- nos ayuda a contabilizar el resultado de filas obtenidad con la consulta anterior
select @@ROWCOUNT
select * from Producto where cantidad not between 6 and 9
select @@ROWCOUNT

/*Obtener datos con null*/
select * from Producto where modelo is null

/*Obtener datos diferentes a null*/
select * from Producto where modelo is not null