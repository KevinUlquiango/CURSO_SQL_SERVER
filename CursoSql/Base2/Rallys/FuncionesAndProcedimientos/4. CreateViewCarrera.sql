-- =============================================
-- Create View template
-- =============================================
USE Rally
GO

IF object_id(N'dbo.vw_carreras', 'V') IS NOT NULL
	DROP VIEW dbo.vw_carreras
GO

CREATE VIEW dbo.vw_carreras AS
select	carr_id AS Carrera,
		nombre,
		ubicacion,
		superficie,
		P1,P2,
		P3,M1,
		M2,M3
from Carrera CR
inner join Puntuacion PU
on CR.pun_id = Pu.pun_id