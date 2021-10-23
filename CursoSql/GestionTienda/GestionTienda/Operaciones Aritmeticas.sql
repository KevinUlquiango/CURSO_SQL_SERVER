use Facturas
select top 10 nombre, modelo,marca,precio,cantidad from Producto order by precio desc

/*SUMA*/
select top 10 nombre, modelo,marca,precio + cantidad as 'Suma' from Producto order by precio desc

/*RESTA*/
select top 10 nombre, modelo,marca,precio - cantidad as 'Resta' from Producto order by precio desc

/*Multiplicacion*/
select top 10 nombre, modelo,marca,precio * cantidad as 'Multiplicacion' from Producto order by precio desc

/*Division*/
select top 10 nombre, modelo,marca,precio / cantidad as "Division" from Producto order by precio desc

/*Ejemplo Calidad Precio*/
select nombre, modelo,marca,(valoracion / precio)*10 as "Calidad Precio" from Producto 
where ((valoracion / precio)*10) >= 1
order by 'Calidad Precio' desc

/*SubConsultas*/
select * from 
(
select nombre, modelo,marca,(valoracion / precio)*10 as CalidadPrecio
from Producto 
)as SeleccionPrevia
where CalidadPrecio >= 1
order by CalidadPrecio desc

/*Modulo*/
select *, edad%2 from Cliente where edad%2 <>0