USE Facturas
/*Retorna solo una ves el parametro a buscar a pesar que existan mas de uno con el mismo nombre*/
select distinct nombre from Producto
select distinct fabricacion from Producto

select distinct nombre, marca 
from Producto
order by marca