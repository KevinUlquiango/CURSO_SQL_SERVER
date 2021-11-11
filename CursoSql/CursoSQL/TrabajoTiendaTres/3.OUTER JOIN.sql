/*video 68*/
use Facturas
/*inner JOIN*/
select * from Cliente as CL
inner join
Pedido as PE
on CL.dni = PE.dni
order by CL.dni

/*full outer JOIN*/
-- Trae todos los datos
select * from Cliente as CL
full outer join
Pedido as PE
on CL.dni = PE.dni
order by CL.dni
-- trea los datos que no tiene ninguna coincidencia
select * from Cliente as CL
full outer join
Pedido as PE
on CL.dni = PE.dni
where CL.dni is null
or PE.dni is null
order by CL.dni

