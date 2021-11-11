/*VIDEO 67
obtener aquellos clientes que no tienen ningun pedido
para entender esto revisar video 67
*/
USE Facturas
goto inicio
/*Modificar tabla*/
-- hacer que no valide la restriccion
alter table Pedido
NOCHECK CONSTRAINT fk_PedidoCliente

--reacer la validacion
alter table Pedido
CHECK CONSTRAINT fk_PedidoCliente


inicio:
-- SELECT * FROM Cliente ORDER BY dni
/*INNER JOIN*/
select * from Cliente as CL
inner join
Pedido as PE
on CL.dni = PE.dni
order by CL.dni

/*LEFT JOIN*/
select * from Cliente as CL
LEFT join
Pedido as PE
on CL.dni = PE.dni
order by CL.dni

/*RIGHT JOIN*/
select * from Cliente as CL
RIGHT join
Pedido as PE
on CL.dni = PE.dni
order by CL.dni

