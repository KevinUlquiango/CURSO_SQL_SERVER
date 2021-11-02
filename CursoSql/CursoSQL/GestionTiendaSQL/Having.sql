use Facturas
select
	marca,
	sum(precio) as "Precio",
	count(proid) as "Total" ,
	avg(precio) as "Precio Medio"
from Producto 
where marca in ('samsung','intel','HP','ElGATO')
group by marca,nombre
having count(*)>1
order by marca

select
	marca as "Marca",
	min(precio) as "Min Precio",
	max(precio) as "Max Precio"
from Producto
group by marca
having min(precio)>100
and max(precio)<800
