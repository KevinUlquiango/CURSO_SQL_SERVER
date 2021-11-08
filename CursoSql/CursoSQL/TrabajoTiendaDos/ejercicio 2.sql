

/*
 El objetivo es ver que marcas y clientes aun no tienen pedidos

 1) Seleccionar los distintos clientes (el dni) que no tiene pedidos  

 2) Seleccionar las distintas marcas que si tienen pedidos, por tanto si tienen encargos

 3) Seleccionar las distintas marcas que no están en el listado anterior (por tanto no tienen encargos). Evitar las marcas sin nombre. 
 
 4) Añadir a esa selección el mayor identificador de producto por marca. 
	Contar las filas de modo que nos resuma 'X marcas con Encargos

 Info: Función de contabilización de registros afectados y función de concatenacion con carácter separador

*/
use Facturas
select * from Cliente
select * from Pedido
select * from Producto
select * from Encargo
/*
Ejercicio 1
Retorna los clientes que no estan en la tabla pedido*/
select * from Cliente where dni not in (select distinct dni from Pedido)

/*
	Ejercicio 2
	Seleccionar las distintas marcas que si tienen pedidos, por tanto si tienen encargos
*/
select distinct marca from Producto 
where	proID in (select proID from Pedido )
		and  proID in (select proID from Encargo)
		and marca is not null 

/*
	Ejercicio 3
	Seleccionar las distintas marcas que no están en el listado anterior (por tanto no tienen
	encargos). Evitar las marcas sin nombre. 
*/
select distinct marca from Producto 
where	proID not in (select proID from Pedido )
		and  proID not in (select proID from Encargo)
		and marca is not null 
/*
	Ejercicio 4
	Añadir a esa selección el mayor identificador de producto por marca. 
	Contar las filas de modo que nos resuma 'X marcas con Encargos'
*/
select CONVERT(varchar(10),max(proID)) +' '+ marca +'  con encargo'  as ProductosConEncargo 
from Producto 
where	proID in (select proID from Pedido )
		and  proID in (select proID from Encargo)
		and marca is not null
group by marca
order by marca 

select @@ROWCOUNT as MarcaConEncargo

