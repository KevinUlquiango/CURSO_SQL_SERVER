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

select REPLACE('Procesador AMD','AMD','Intel') Reemplazo
select REPLICATE('Papel Impresora',3) Replicar
select REVERSE('samsung')

select '-----        -----' "UFF!"
select '-----'+SPACE(8)+'-----' "MEJOR!"

SELECT STR(112.37, 6, 1)

SELECT STRING_AGG (CONVERT(nvarchar(max),Nombre), ',') AS csv 
FROM Producto

declare @Productos NVARCHAR(400) = 'microfono,cascos,smartphone,notebook,memoria usb'   
select value from STRING_SPLIT(@Productos, ',')  SeparacionPorComas

select STUFF('GOT SL',5,2,'SA') Cambio

select @@VERSION Todo,SUBSTRING(@@VERSION,11,10) Extraido

select TRANSLATE('Tarjeta Gráfica', 'aá', 'eé')
