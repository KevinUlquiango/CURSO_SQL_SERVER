/*Video 50: generar tablas adicionales con la sentencia INTO*/

use Facturas

declare @w_dni varchar(14)
set @w_dni = '111111111B'
/*
select * 
into Seg_Cliente
from Cliente where dni like @w_dni
*/

insert into Seg_Cliente select * from Cliente where dni like @w_dni

delete from Seg_Cliente 
where dni like @w_dni

select * from Seg_cliente

