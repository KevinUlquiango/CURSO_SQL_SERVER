/*Video 27 del curso*/
use Facturas
select * from Producto where nombre='Tarjeta'
/*like me permite buscar patrones en las cadenas de caracteres*/
--% ? Permite que traer resultados que empiensen primero por tarjeta, si pongo primero el porcentaje
--y al final tambien me trae todos los resultados que posean el parametro tarjeta
select * from Producto where nombre like 'Tarjeta%'

/*Resultado que contengan la palabra gaming*/
select * from Producto where modelo like '%gaming%'

/*_ ? me permite retornar datos que ya sean por ejemplo ratón o raton, donde la ó no afecta la consulta*/
select * from Producto where nombre like 'rat_n'

/*retornar solo los datos que contengan Extreme 1.0 y Extreme 2.0 */
-- el [] me permite especificar el parametro de busqueda
select * from Producto where modelo like 'Extreme [1,2]%'

/*Retornar datos como el ejemplo anterior pero con un rango*/
select * from Producto where modelo like 'Extreme [2-4]%'

/*Retornar todos los datos excepto el que tenga 2*/
-- se usa ^ ( alt gr + la tecla despues de la ñ)
select * from Producto where modelo like 'Extreme [^2]%'

/*Retornar los datos que no coinciden con el patron de busqueda*/
select * from Producto where nombre not like 'Tarjeta%'