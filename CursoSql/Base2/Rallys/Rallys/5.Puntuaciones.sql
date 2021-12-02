use Rally
/*Declaracion de variables*/
declare @w_carrera	int,
		@w_equipo	int

select	@w_carrera	=	0,
		@w_equipo	=	0

select	CONCAT_WS(' ',CR.nombre,Cr.ubicacion) as Carrera,
		--puesto as Puesto,
		Eq_ID as Equipo,
		P1,
		EQ.Piloto,
		EQ.paisPiloto,
		EQ.Copiloto,
		EQ.Vehiculo,
		(select * from dbo.GetPuntos(puesto,clasificado,P1,P2,P3)) as Puntos
from Participacion PA
inner join
(select * from ListarCarreras(@w_carrera)) CR
on
PA.carr_id = CR.Carrera
inner join (select * from ListarEquipos(@w_equipo)) EQ
on
EQ.equipo = PA.Eq_ID
order by temporada,Cr.Carrera,PA.puesto


