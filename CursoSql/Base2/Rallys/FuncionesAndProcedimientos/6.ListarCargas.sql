--================================================
--  Create Inline Table-valued Function template
--================================================
USE Rally
GO

IF OBJECT_ID (N'dbo.ListarCarreras') IS NOT NULL
    DROP FUNCTION dbo.ListarCarreras
GO

CREATE FUNCTION dbo.ListarCarreras(@w_carrera int)
RETURNS TABLE
AS RETURN
(
	select	Carrera,
			nombre,
			ubicacion,
			superficie,
			P1,P2,
			P3,M1,
			M2,M3
	from	vw_carreras
	where	Carrera =	case when @w_carrera <> 0 then @w_carrera
						else Carrera end
)
GO

select * from ListarCarreras(2)
