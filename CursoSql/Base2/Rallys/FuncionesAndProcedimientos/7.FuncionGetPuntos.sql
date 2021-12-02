--================================================
--  Create Inline Table-valued Function template
--================================================
USE RALLY
GO

IF OBJECT_ID (N'dbo.GetPuntos') IS NOT NULL
    DROP FUNCTION dbo.GetPuntos
GO

CREATE FUNCTION dbo.GetPuntos(
	@w_puesto			int,
	@w_clasificados		bit,
	@w_pun1				int,
	@w_pun2				int,
	@w_pun3				int
	)
RETURNS TABLE
AS RETURN
(
	SELECT case 
			when @w_puesto = 1 and @w_clasificados = 1 then CAST(@w_pun1 as varchar)
			when @w_puesto = 2 and @w_clasificados = 1 then CAST(@w_pun2 as varchar)
			when @w_puesto = 3 and @w_clasificados = 1 then CAST(@w_pun3 as varchar)
			when @w_clasificados = 0 then 'No Clasificado'
			/*Siempre debe terminar con un as <nombre>*/
		else CAST(0 as varchar) end Puntos
)
GO
