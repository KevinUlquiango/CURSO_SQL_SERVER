use Facturas
/*Concatenar*/
select 
nombre +'tiene el email: '+ email as "Nombre y Email",
cast(edad as varchar) + ' años' as Edad
from Cliente

/*Convertir*/
select 
	CAST(edad as varchar) as "Edad con CAST",
	CONVERT(varchar,edad) as "Edad con CONVERT"
from Cliente

/*CONVERT FECHAS*/
select top 3 cast(fabricacion as varchar) as "FECHA Formato Jan 30 2020 12:00AM"
from Producto

-- FORMATO ? mes/dia/año
select top 3 convert(varchar,fabricacion,101) as "Fecha formato 01/30/2020"
from Producto

-- FORMATO ? año.mes.dia
select top 3 convert(varchar,fabricacion,102) as "Fecha formato 2020.01.30"
from Producto

-- FORMATO ? dia/mes/año
select top 3 convert(varchar,fabricacion,103) as "Fecha formato 30/01/2020"
from Producto

-- FORMATO ? dia.mes.año
select top 3 convert(varchar,fabricacion,104) as "Fecha formato 30.01.2020"
from Producto

-- FORMATO ? dia-mes-año
select top 3 convert(varchar,fabricacion,105) as "Fecha formato 30-01-2020"
from Producto

-- FORMATO ? mes dia año hora:minutos:segundos am/pm
select top 3 convert(varchar,fabricacion,109) as "Fecha formato Jan 30 2020 12:00:00:000AM"
from Producto

-- FORMATO ? año-mes-dia hora:minuto:segundos
select top 3 convert(varchar,fabricacion,120) as "Fecha formato 2020-01-30 00:00:00"
from Producto
/******************************************************************************************/
select * from 
(
/*Se le aplica el cast para decirle que solo me de el resultado con 4 digitos y 2 decimales*/
-- cast((valoracion / precio)*10 as numeric(4,2))
select nombre, modelo,marca,cast((valoracion / precio)*10 as numeric(4,2)) as CalidadPrecio
from Producto 
)as SeleccionPrevia
where CalidadPrecio >= 1
order by CalidadPrecio desc
