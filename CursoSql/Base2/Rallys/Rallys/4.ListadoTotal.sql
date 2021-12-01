use Rally
/*Declaracion de variables*/
declare @w_carrera	int,
		@w_equipo	int

select	@w_carrera	=	0,
		@w_equipo	=	0

select	CONCAT_WS(' ',CR.nombre,Cr.ubicacion) as Carrera,
		puesto as Puesto,
		Eq_ID as Equipo,
		P1,
		EQ.*,
		case when clasificado = 1 then cast(puesto as varchar) else 'No Clasificado' end as Puesto 
from Participacion PA
inner join
(select * from ListarCarreras(@w_carrera)) CR
on
PA.carr_id = CR.Carrera
inner join (select * from ListarEquipos(@w_equipo)) EQ
on
EQ.equipo = PA.Eq_ID
order by temporada,Cr.Carrera


