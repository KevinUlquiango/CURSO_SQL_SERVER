/*

Conocer a los clientes:

1) Realiza un listado de clientes (sin el DNI) que tengan alguno de estos dominios en su mail:
	"sumail", "masmail" o "mejormail"; A continuación filtra por los que vivan en calles (no en plazas, avenidas, etc)

2) Muestra el dato de la edad media de todos los clientes de la tabla que tengan edad en su registro.

	Info 1: la funcion de media de enteros hará media entera, lo cual puede que no sea una media exacta. Recuerda el CAST.

*/

use Facturas
/*Ejercicio 1*/
select nombre,email,edad,direccion 
from Cliente 
where 
(	email like '%sumail%'	or
	email like '%masmail%'	or
	email like '%mejormail%'
)
and
(
	direccion not like  'Calle%'
)

/*Ejercicio 2*/
select 
AVG(
	CAST(edad as numeric(3,1))
	) 
	as "Edad media de los clientes"
from Cliente 
where edad is not null
