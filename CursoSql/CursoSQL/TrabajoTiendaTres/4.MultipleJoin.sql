use Facturas

declare @w_miCliente	varchar(25)

set @w_miCliente = 'Cristina'

select Cl.nombre,CL.edad,PE.fecha,En.cantidad,PR.nombre,PR.nombre from 
Cliente as CL
inner join
Pedido	as PE
on CL.dni = PE.dni
	inner join
	Encargo as EN
	on PE.pedID = EN.pedID
		inner join 
		Producto as PR
		on EN.prodID = PR.proID
where Cl.nombre = @w_miCliente
order by CL.dni