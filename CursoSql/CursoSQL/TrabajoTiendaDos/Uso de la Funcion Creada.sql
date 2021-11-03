use Facturas
select top 5 nombre, dbo.PrecioCaja(precio,cantidad) as PrecioCaja
from Producto