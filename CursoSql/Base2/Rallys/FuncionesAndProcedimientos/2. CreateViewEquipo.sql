-- =============================================
-- Create View template
-- =============================================
USE Rally
GO

IF object_id(N'dbo.vw_equipo', 'V') IS NOT NULL
	DROP VIEW dbo.vw_equipo
GO

CREATE VIEW dbo.vw_equipo AS

	select
		EQ.Eq_id	as Equipo,
		P.nombre	as Piloto,
		P.pais		as paisPiloto
		,C.nombre	as Copiloto
		,C.pais		as paisCopiloto
		,CONCAT_WS('',M.nombre,Ch.modelo) as Vehiculo from Equipo EQ
		inner join Piloto P		on	EQ.licencia_P	=	P.licencia_P
		inner join Copiloto C	on	EQ.licencia_C	=	C.licencia_C
		inner join Coche CH		on	EQ.matricula	=	CH.matricula
		inner join Marca M		on	M.mar_id		=	Ch.mar_id


