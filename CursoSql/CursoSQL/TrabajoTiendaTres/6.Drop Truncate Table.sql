--Video 71
use Facturas
/*Reinicio de la primary key de la tabla*/
DBCC checkident (Seg_cliente,Reseed,0)
select * from Seg_Cliente
/*Borrar todo el contenido de la tabla y reiniciar la primary key a cero*/
truncate table Seg_Cliente
/*Eliminado de una tabla*/
drop table Seg_Cliente
