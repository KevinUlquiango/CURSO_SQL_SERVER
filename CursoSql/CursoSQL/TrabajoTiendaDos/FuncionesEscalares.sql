/*Video 56*/
use Facturas
/**** Funciones de configuración ****/
select @@LANGUAGE Lenguaje, @@SERVERNAME Servidor, @@SERVICENAME Instancia, @@VERSION VersionGestor


/**** Funciones de fecha y hora ****/

select SYSDATETIME() FechaHoraInstanciaEquipoAP, SYSDATETIMEOFFSET() FechaHoraInstanciaEquipoAP
select CURRENT_TIMESTAMP FechaHoraInstanciaEquipoBP,GETDATE() FechaHoraInstanciaEquipoBP

---- Funciones que devuelven parte de fecha-hora -----
select DAY(SYSDATETIME()) Dia, MONTH(SYSDATETIME()) Mes, YEAR(SYSDATETIME()) Año

---- Funciones de operaciones de fecha-hora -----
select DATEDIFF(day,'2020-01-01','2020-01-29') DiferenciaEnDias
select DATEDIFF(HOUR,'2020-01-01','2020-01-02') DiferenciaEnHoras
select DATEDIFF(HOUR,'2020-01-01 12:00','2020-01-02') DiferenciaEnHoras
select DATEDIFF(Month,'2020-01-01','2020-03-01') DiferenciaEnMeses
select DATEDIFF(year,'2019-01-01','2020-01-01') DiferenciaEnAños

select DATEADD(YEAR,1,'2020-01-31') AñadeUnAño
select DATEADD(MONTH,1,'2020-01-31') AñadeUnMes  --<-- Ultimo día del mes siguiente
select DATEADD(HOUR,1,'2020-01-31 8:45') AñadeUnaHora
select DATEADD(HOUR,-1,'2020-01-31 8:45') RestaUnaHora

select CONVERT(varchar,DATEADD(YEAR,1,'2020-01-31'),103) anidaFunciones

select ISDATE('2020-01-01') verificaLaFechaCorrectoIgualUno
select ISDATE('2020-13-13') verificaLaFechaCorrectoIgualCero

/**** Funciones matemáticas ****/

select PI(),ABS(-4),SQRT(144),sin(45),cos(45),tan(45) --<-- etc etc


/**** Funciones cadena de caracteres ****/

select CHARINDEX('Duro','Disco Duro') BuscaDesdePrincipio
/*Busca desde la posicion especificada*/
select CHARINDEX('Duro','Disco Duro',8) BuscaDesdePosicionInt

select CONCAT('Disco','SSD') Concatena
select CONCAT_WS(' Separador ','Disco','HDD') ConcatenaConSeparador

select LEFT('Fuente Alimentación',6) CortaporIZQ
select RIGHT('Fuente Alimentación',6) CortaporDER
select LEN('Fuente Alimentación') LongitudCad
select LOWER('Fuente Alimentación') Minus
select UPPER('Fuente Alimentación') Mayus
select LTRIM('   GOT SL') CortaEspaciosIZQ
select RTRIM('GOT SL      ') CortaEspaciosDER
select TRIM('    GOT SL     ') CortaEspaciosTOTAL

select PATINDEX('%TB%','Discos 550GB, Discos 1TB, Discos 2TB') BuscaPRIMERPatron

/*
	Procesador AMD: frase original donde buscara el parametro a remplazar
	AMD: la palabra que busca
	Intel: Palabra por la que se remplazara AMD
*/
select REPLACE('Procesador AMD','AMD','Intel') Reemplazo
select REPLICATE('Papel Impresora',3) Replicar
select REVERSE('samsung')
/*
	Colocar espacios
	1) como no hacer lo
	2) como debemos hacer lo
*/
/*1)*/select '-----        -----' "UFF!"
/*2)*/select '-----'+SPACE(8)+'-----' "MEJOR!"


--Redondeo
/*El 5 es la cantidad de numeros que se mostrara en el resultado incluido el punto
en este caso solo admite de volver 112.4 ya que esta en 5 si fuera 3 solo de volveria 112*/
SELECT STR(112.36, 5, 1) as redondeo

/*el max aqui es el valor asignado como quien diria a un ej:varchar(25)*/
SELECT STRING_AGG (CONVERT(nvarchar(max),Nombre), '|') AS csv 
FROM Producto

/*realiza una consulta, en lugar de retornar lo en una sola linea la retorna en varias filas
dependiendo del numero de datos retornados por la consulta*/
declare @Productos NVARCHAR(400) = 'microfono:cascos,smartphone,notebook,memoria usb'   
select value from STRING_SPLIT(@Productos, ',')  SeparacionPorComas

/*remplaza los valores indicados con la longitud del segundo parametro por el 
valor del tercer parametro*/
select STUFF('GOT SL',5,2,'Nuevo Valor') Cambio

select @@VERSION Todo,SUBSTRING(@@VERSION,11,10) Extraido

/*Remplaza los valores del segundo parametro por los valores del tercer parametro*/
select TRANSLATE('Tarjeta Gráfica', 'aá', 'eé')
