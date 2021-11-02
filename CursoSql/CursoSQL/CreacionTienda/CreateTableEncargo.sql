use Facturas

create table Encargo(
	pedID		int				not null,
	prodID		int				not null,
	cantidad	smallint		not null,
	descuento	numeric(3,1),

	constraint Ck_EncargoCantidadMayorCero check(
		cantidad > 0
	),
	constraint CK_EncargoDescuentoNoNegativo	check(
		descuento >= 0
	),
	constraint FK_EncargoPedido foreign key (pedID) 
		references Pedido(pedID),
	constraint FK_EncargoProducto foreign key (prodID)
		references Producto(proID), 
	constraint UQ_EncargoPedidoUnico unique(
		prodID,pedID		
		)


	
)