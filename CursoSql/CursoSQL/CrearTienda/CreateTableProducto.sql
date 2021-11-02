use Facturas

create table Producto(
	proID			int				not null	identity(1,1),
	nombre			varchar(25)		not null,
	precio			numeric(18,2),
	modelo			varchar(25),
	marca			varchar(15),
	cantidad		smallint		not null,
	fabricacion		smalldatetime,
	valoracion		numeric(2,1),

	constraint PK_Producto primary key(
		proID asc
	),
	constraint UQ_ProductoUnico unique (
		nombre, modelo, marca
	),
	constraint CK_ProductoPrecioNoNegativo check(
		precio >= 0
	),
	constraint CK_ProductoCantidadMayorCero check(
		cantidad > 0
	),
	constraint CK_ProductoValorNoNegativo check(
		valoracion > 0
	)

);
