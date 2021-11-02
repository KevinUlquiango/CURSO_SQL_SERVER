use Facturas

select * from Producto where fabricacion > '01-01-2000' order by fabricacion
select @@ROWCOUNT as 'Total Fecha' 

select * from Producto where (fabricacion < '01/01/2016' ) or fabricacion is null order by fabricacion
select @@ROWCOUNT as 'Total Fecha' 

/*Conocer que productos se fabricaron entre determinada fecha*/
Select * from Producto where fabricacion  between '2001-04-01' and '2021-04-24'
select @@ROWCOUNT as 'Total'

/*Nota cuando trabaje con horas siempre a partir del segundo 30 lo redondea al imediato superior*/
Select * from Producto where fabricacion  between '2001-04-01' and '2028-04-24 23:59'
select @@ROWCOUNT as 'Total'