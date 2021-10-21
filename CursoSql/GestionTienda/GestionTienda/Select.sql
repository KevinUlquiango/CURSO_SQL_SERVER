use Facturas
/* Tabla Cliente*/
select nombre as Clientes,dni as Identificacion from Cliente

/*Tabla Producto*/
select *from Producto
select nombre as Producto, precio*cantidad as Precio_total_del_lote from	Producto

/*Tabla Pedidos*/
select top 3 * from Pedido

/*Tabla Encargo*/
select * from Encargo