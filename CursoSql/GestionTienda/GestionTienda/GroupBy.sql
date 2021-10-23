use Facturas

select proid,marca,precio from Producto 
where marca in ('samsung','intel','HP','ElGATO')
ORDER BY marca

/*Suma*/
select sum(precio) from Producto 
where marca in ('samsung','intel','HP','ElGATO')
/*Contar registros*/
select 
sum(precio) as "Precio",
count(proid) as "Total" 
from Producto 
where marca in ('samsung','intel','HP','ElGATO')
/*Agrupar por marca*/
select
marca,
sum(precio) as "Precio",
count(proid) as "Total" 
from Producto 
where marca in ('samsung','intel','HP','ElGATO')
group by marca
/*Agrupar por marca y nombre*/
select
marca,
sum(precio) as "Precio",
count(proid) as "Total" 
from Producto 
where marca in ('samsung','intel','HP','ElGATO')
group by marca,nombre
order by marca
/*Obtener el precio medio de un producto*/
select
marca,
sum(precio) as "Precio",
count(proid) as "Total" ,
avg(precio) as "Precio Medio"
from Producto 
where marca in ('samsung','intel','HP','ElGATO')
group by marca,nombre
order by marca

/*Obtener edad media,mayor y minimo*/
select
avg(edad) as "Edad Media",
max(edad) as "Edad Maxima",
min(edad) as "Edad Minima"
from Cliente

