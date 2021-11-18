use Rally

/*Coches sin equipo*/
select * from Coche CH
left join Equipo EQ
on CH.matricula = EQ.matricula
where EQ.Eq_id IS NULL

/*Copilotos que no tienen equipo*/
select * from Copiloto CP
left join Equipo EQ
on CP.licencia_C = EQ.licencia_C
WHERE EQ.Eq_id IS NULL

/*
INSERT INTO Equipo
VALUES (101,205, NULL)

ALTER TABLE EQUIPO
	ALTER COLUMN matricula char(7) null
*/

select * from Copiloto CP
right join Equipo EQ
on Cp.licencia_C = EQ.licencia_C
where matricula is null

/*FULL OUTER JOIN*/
select * from Coche ch
FULL OUTER JOIN Equipo EQ ON ch.matricula=EQ.matricula
FULL OUTER JOIN Copiloto CP ON EQ.licencia_C=CP.licencia_C

select * from Coche ch
FULL OUTER JOIN Equipo EQ ON ch.matricula=EQ.matricula
FULL OUTER JOIN Copiloto CP ON EQ.licencia_C=CP.licencia_C
where EQ.Eq_id is null or EQ.matricula is null