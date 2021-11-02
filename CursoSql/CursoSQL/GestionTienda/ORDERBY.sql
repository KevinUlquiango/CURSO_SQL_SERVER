use Facturas
/*Ordenar de forma ascendente*/
select * from Cliente order by nombre asc

/*Ordenar de forma descendente*/
select * from Cliente order by nombre desc

/*Ordenar de forma descendente primero por edad y despues si se repite que ordene por edad*/
select * from Cliente order by edad des,nombre desc

/*Retorne solo 10 clientes*/
select top 10 * from Cliente order by edad des, nombre desc

/*Omitir las primeras 5 lineas */
--offset esto me permite omitir las 5 primeras lineas, NO SE PUEDE USAR UN TOP CON ESTO
select * from Cliente order by edad desc offset 5 rows

/*Obtener una cantidad limitada de registros apartir de la omision de las 5 primeras lineas*/
select * from Cliente order by edad desc offset 5 row fetch next 8 row only