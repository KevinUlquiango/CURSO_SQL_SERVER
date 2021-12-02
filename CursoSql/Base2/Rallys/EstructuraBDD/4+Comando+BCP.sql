

-- To allow advanced options to be changed.  
EXECUTE sp_configure 'show advanced options', 1;  
GO  
-- To update the currently configured value for advanced options.  
RECONFIGURE;  
GO  
-- To enable the feature.  
EXECUTE sp_configure 'xp_cmdshell', 1;  
GO  
-- To update the currently configured value for this feature.  
RECONFIGURE;  
GO  



-- Importacion:
EXEC master..xp_cmdshell 'BCP RALLY.dbo.piloto IN C:\importacionBCP\Piloto.txt -T -c -t,'
EXEC master..xp_cmdshell 'BCP RALLY.dbo.copiloto IN C:\importacionBCP\Copiloto.txt -T -c -t,'
EXEC master..xp_cmdshell 'BCP RALLY.dbo.marca IN C:\importacionBCP\Marca.txt -T -c -t,'
EXEC master..xp_cmdshell 'BCP RALLY.dbo.coche IN C:\importacionBCP\Coche.txt -T -c -t,'
EXEC master..xp_cmdshell 'BCP RALLY.dbo.equipo IN C:\importacionBCP\Equipo.txt -T -c -t,'

EXEC master..xp_cmdshell 'BCP RALLY.dbo.carrera IN C:\importacionBCP\Carrera.txt -T -c -t,'
EXEC master..xp_cmdshell 'BCP RALLY.dbo.puntuacion IN C:\importacionBCP\Puntuacion.txt -T -c -t,'

-- No importar de momento::
-- EXEC master..xp_cmdshell 'BCP RALLY.dbo.participacion IN C:\importacionBCP\Participacion.txt -T -c -t,'

-- Exportacion:
EXEC master..xp_cmdshell 'BCP RALLY.dbo.piloto OUT C:\importacionBCP\Piloto.txt -T -c -t,'
EXEC master..xp_cmdshell 'BCP RALLY.dbo.copiloto OUT C:\importacionBCP\Copiloto.txt -T -c -t,'
EXEC master..xp_cmdshell 'BCP RALLY.dbo.marca OUT C:\importacionBCP\Marca.txt -T -c -t,'
EXEC master..xp_cmdshell 'BCP RALLY.dbo.coche OUT C:\importacionBCP\Coche.txt -T -c -t,'
EXEC master..xp_cmdshell 'BCP RALLY.dbo.equipo OUT C:\importacionBCP\Equipo.txt -T -c -t,'

EXEC master..xp_cmdshell 'BCP RALLY.dbo.carrera OUT C:\importacionBCP\Carrera.txt -T -c -t,'
EXEC master..xp_cmdshell 'BCP RALLY.dbo.participacion OUT C:\importacionBCP\Participacion.txt -T -c -t,'
EXEC master..xp_cmdshell 'BCP RALLY.dbo.puntuacion OUT C:\importacionBCP\Puntuacion.txt -T -c -t,'



