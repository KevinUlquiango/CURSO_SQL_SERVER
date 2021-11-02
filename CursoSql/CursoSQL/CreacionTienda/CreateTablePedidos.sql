use Facturas
create table Pedido(
	pedID		int				not null	identity(1,1),
	fecha		smalldatetime,
	dni			varchar(10)		not null,

	constraint pk_Pedido primary key(
		pedID asc
	),
	constraint fk_PedidoCliente foreign key (dni)
	references Cliente(dni)
)