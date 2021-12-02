--================================================
--  Create Inline Table-valued Function template
--================================================
USE Rally
GO

IF OBJECT_ID (N'dbo.ListarEquipos') IS NOT NULL
    DROP FUNCTION dbo.ListarEquipos
GO

CREATE FUNCTION dbo.ListarEquipos(@w_equipo smallint)
RETURNS TABLE
AS RETURN
(
	select	Equipo,
			Piloto,
			paisPiloto,
			Copiloto,
			paisCopiloto,
			Vehiculo
	from vw_equipo	
	where Equipo = case
					when @w_equipo <> 0 then @w_equipo
					else 
					Equipo end
)
GO
select * from ListarEquipos(0)

