/*Operadores Logicos*/

Use Facturas
select * from Producto where  nombre like 'Disco %'
select @@ROWCOUNT as "Total de discos Duros"
/*Operador AND*/
select * from Producto where nombre like 'Disco Duro' and valoracion > 7

select @@ROWCOUNT as "Resultado"

/*Operador OR*/
select * from Producto where nombre like 'Disco Duro' or nombre like 'Monitor'
select @@ROWCOUNT as "Resultado Operador OR"

select * from Producto where (nombre like 'Disco Duro' or nombre like 'Monitor') and valoracion > 7
select @@ROWCOUNT as "Resultado Operaciones Conbinadas"

/*Operador In*/

select * from Producto where marca in('samsung','intel','hp')  and precio >200
select @@ROWCOUNT as "Resultado in"