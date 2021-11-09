
/*
 Crear dos procedimientos almacenados que permitan dos inserciones: 

 1) sp_insert_pedidos Inserción en pedido
 2) sp_insert_encargos Inserción en encargo (dando el id de pedido del insert anterior, será el mayor)	

 BEGIN END si estan permitidas en Procedimientos
*/

create procedure sp_insert_pedidos(
	@w_fecha	smalldatetime,
	@w_dni		varchar(10)
)as
begin
	insert into Facturas..Pedido (
		fecha,		dni)
	values(
		@w_fecha,	@w_dni)
end
go
create procedure sp_insert_encargos(
	@w_prodId		int,
	@w_cantidad		smallint,
	@w_descuento	numeric(3,1)
)as
begin
	declare @w_pedID int
	select @w_pedID= max(pedID)  from Pedido
	insert into Facturas..Encargo (
		pedID,		prodID,		cantidad,		descuento)
	values(
		@w_pedID,	@w_prodId,	@w_cantidad,	@w_descuento)	
end
