USE [RALLY]
GO

select IDENT_CURRENT('Marca') idMarca,IDENT_CURRENT('Equipo') idEquipo
	,IDENT_CURRENT('Carrera') idCarrera,IDENT_CURRENT('Puntuacion') idPuntuacion
	,IDENT_CURRENT('Participacion') idParticipacion


ALTER TABLE [dbo].[Carrera] DROP CONSTRAINT [FK_Carrera_Puntuacion]
GO
ALTER TABLE [dbo].[Coche] DROP CONSTRAINT [FK_coche_marca]
GO
ALTER TABLE [dbo].[Equipo] DROP CONSTRAINT [FK_copiloto]
GO
ALTER TABLE [dbo].[Equipo] DROP CONSTRAINT [FK_matricula]
GO
ALTER TABLE [dbo].[Equipo] DROP CONSTRAINT [FK_piloto]
GO
ALTER TABLE [dbo].[Participacion] DROP CONSTRAINT [FK_Participacion_Carrera]
GO
ALTER TABLE [dbo].[Participacion] DROP CONSTRAINT [FK_Participacion_Equipo]
GO

EXEC sp_MSForEachTable 'TRUNCATE TABLE ? '
GO

--truncate table Marca
--truncate table Coche
--truncate table Piloto
--truncate table Copiloto
--truncate table Equipo
--truncate table Participacion
--truncate table Carrera
--truncate table Puntuacion

ALTER TABLE [dbo].[Participacion]  WITH CHECK ADD  CONSTRAINT [FK_Participacion_Equipo] FOREIGN KEY([Eq_ID])
REFERENCES [dbo].[Equipo] ([Eq_id])
GO
ALTER TABLE [dbo].[Participacion] CHECK CONSTRAINT [FK_Participacion_Equipo]
GO
ALTER TABLE [dbo].[Participacion]  WITH CHECK ADD  CONSTRAINT [FK_Participacion_Carrera] FOREIGN KEY([carr_id])
REFERENCES [dbo].[Carrera] ([carr_id])
GO
ALTER TABLE [dbo].[Participacion] CHECK CONSTRAINT [FK_Participacion_Carrera]
GO
ALTER TABLE [dbo].[Equipo]  WITH NOCHECK ADD  CONSTRAINT [FK_piloto] FOREIGN KEY([licencia_P])
REFERENCES [dbo].[Piloto] ([licencia_P])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_piloto]
GO
ALTER TABLE [dbo].[Equipo]  WITH NOCHECK ADD  CONSTRAINT [FK_matricula] FOREIGN KEY([matricula])
REFERENCES [dbo].[Coche] ([matricula])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_matricula]
GO
ALTER TABLE [dbo].[Equipo]  WITH NOCHECK ADD  CONSTRAINT [FK_copiloto] FOREIGN KEY([licencia_C])
REFERENCES [dbo].[Copiloto] ([licencia_C])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_copiloto]
GO
ALTER TABLE [dbo].[Coche]  WITH NOCHECK ADD  CONSTRAINT [FK_coche_marca] FOREIGN KEY([mar_id])
REFERENCES [dbo].[Marca] ([mar_id])
GO
ALTER TABLE [dbo].[Coche] CHECK CONSTRAINT [FK_coche_marca]
GO
ALTER TABLE [dbo].[Carrera]  WITH NOCHECK ADD  CONSTRAINT [FK_Carrera_Puntuacion] FOREIGN KEY([pun_id])
REFERENCES [dbo].[Puntuacion] ([pun_id])
GO
ALTER TABLE [dbo].[Carrera] CHECK CONSTRAINT [FK_Carrera_Puntuacion]
GO

select IDENT_CURRENT('Marca') idMarca,IDENT_CURRENT('Equipo') idEquipo
	,IDENT_CURRENT('Carrera') idCarrera,IDENT_CURRENT('Puntuacion') idPuntuacion
	,IDENT_CURRENT('Participacion') idParticipacion



