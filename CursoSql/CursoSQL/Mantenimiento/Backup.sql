/*GENERAR ´COPIA DE LA BASE DE DATOS */
use Facturas
backup database Facturas
to disk = 'C:\RespaldoBaseDeDatosCursoSQL\facturas.bak'
with format,
	medianame = 'CopiaDeFacturas',
	name = 'Copia de facturas'

