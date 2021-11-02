use Facturas
delete from Pedido
delete from Encargo
insert into Pedido (fecha,dni)
values
(CURRENT_TIMESTAMP,'111111111B')

select * from Pedido
select * from Producto

insert into Encargo(pedID,prodID,cantidad,descuento)
values
(25,577,1,0)

select * from Encargo



---------------------------------------------
use Facturas

---- Pedidos de Clientes -----
insert into Pedido
values
('2019-04-02','333334444I')

insert into Pedido
values
('2019-07-02','666667777J')

insert into Pedido
values
('2020-04-02','444444444C')

insert into Pedido
values
('2020-04-02','333334444I')

insert into Pedido
values
('2020-04-02','777778888M')

insert into Pedido
values
('2020-04-02','777776666I')

insert into Pedido
values
('2020-04-02','888888888E')

select * from Pedido
select * from Producto
----- Encargos a Almacén -------
insert into Encargo
values
(25,577,2,0)

insert into Encargo
values
(28,578,1,10)

insert into Encargo
values
(30,579,2,0)

insert into Encargo
values
(31,580,1,0)

insert into Encargo
values
(35,581,2,25)

insert into Encargo
values
(34,582,3,0)

insert into Encargo
values
(36,583,1,15)

insert into Encargo
values
(37,584,2,12)

insert into Encargo
values
(38,585,1,0)

insert into Encargo
values
(39,586,1,0)
