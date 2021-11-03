--VIDEO 55
--drop function PrecioCaja
--use Facturas
/*Primero usar el use facturas y luego comentarla sino mandara al master*/
create function PrecioCaja(
	@w_param1 numeric (18,2),
	@w_param2 int
)
returns numeric (18,2) as 
begin
	declare @w_resultado numeric (18,2)
	select @w_resultado = @w_param1 * @w_param2
	return @w_resultado
end