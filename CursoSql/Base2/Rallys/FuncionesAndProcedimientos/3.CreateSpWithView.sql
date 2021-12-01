
		use Rally
 -- =============================================
-- Create basic stored procedure template
-- =============================================

-- Drop stored procedure if it already exists
IF EXISTS (
  SELECT * 
    FROM INFORMATION_SCHEMA.ROUTINES 
   WHERE SPECIFIC_SCHEMA = N'dbo'
     AND SPECIFIC_NAME = N'sp_listar_equipos' 
)
   DROP PROCEDURE dbo.sp_listar_equipos
GO

CREATE PROCEDURE dbo.sp_listar_equipos
	@w_equipo smallint = 0	
AS
	select Equipo,Piloto,paisPiloto,Copiloto,paisCopiloto,Vehiculo
	from vw_equipo
	where Equipo = 
	case  when @w_equipo<>0 then @w_equipo
	else
	Equipo
	end
	order by Piloto
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE sp_listar_equipos
	@w_equipo = 0

	 
