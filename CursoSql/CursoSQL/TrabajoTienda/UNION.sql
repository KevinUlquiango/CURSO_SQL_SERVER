use Facturas
/*Nueva Forma de insertar Productos usando el union*/
select * from Encargo
insert into Pedido 
values ('2020-05-29','111111111B')


insert into Encargo
select (select max(pedID) from Pedido) as pedID,
577 as proId,
2 as cantidad,
0 as descuento
union
select (select max(pedID) from Pedido) as pedID,
578 as proId,
1 as cantidad,
0 as descuento
union
select 
(select max(pedID) from Pedido) as pedID,
579 as proId,
3 as cantidad,
0 as descuento
union
select 
(select max(pedID) from Pedido) as pedID,
580 as proId,
1 as cantidad,
5 as descuento