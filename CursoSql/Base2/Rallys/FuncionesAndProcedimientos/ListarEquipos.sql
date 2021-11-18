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
	select P.nombre,P.pais,C.nombre,C.pais,CONCAT_WS('',M.nombre,Ch.modelo) as Vehiculo from Equipo EQ
	inner join Piloto P		on	EQ.licencia_P	=	P.licencia_P
	inner join Copiloto C	on	EQ.licencia_C	=	C.licencia_C
	inner join Coche CH		on	EQ.matricula	=	CH.matricula
	inner join Marca M		on	M.mar_id		=	Ch.mar_id
	where EQ.Eq_id = 
	case  when @w_equipo<>0 then @w_equipo
	else
	EQ.Eq_id
	end
	order by P.nombre
GO

-- =============================================
-- Example to execute the stored procedure
-- =============================================
EXECUTE sp_listar_equipos
	@w_equipo = 0


