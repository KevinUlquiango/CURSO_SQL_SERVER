-- =============================================
-- Create database template
-- =============================================
USE master
GO
--VIDEO 77
/*para cambiar mas rapido los parametros ctrl + mayus +M*/
-- Drop the database if it already exists
IF  EXISTS (
	SELECT name 
		FROM sys.databases 
		WHERE name = N'Rally'
)
BEGIN
	DROP DATABASE Rally

END
GO

CREATE DATABASE Rally
GO