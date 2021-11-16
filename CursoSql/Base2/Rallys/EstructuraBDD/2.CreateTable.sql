
-- =========================================
-- Create table template
-- =========================================
USE RALLY
GO

-- 1ª versión de tabla piloto:
/*
IF OBJECT_ID('Piloto', 'U') IS NOT NULL
  DROP TABLE Piloto
GO

CREATE TABLE Piloto
(
	licencia_P int NOT NULL, 
	nombre varchar(60) NOT NULL, 
	edad tinyint NULL,
	pais varchar(40) NULL, 
    CONSTRAINT PK_Piloto PRIMARY KEY 
	(
		licencia_P asc
	),
	constraint CK_edad_mayor_dieciseis check
	(
		edad>16
	)
)
*/

-- Versión definitiva:
-- =====================
-- [Piloto]
-- =====================

IF OBJECT_ID('Piloto', 'U') IS NOT NULL
  DROP TABLE Piloto
GO

CREATE TABLE Piloto
(
	licencia_P		int				NOT NULL, 
	nombre			varchar(60)		NOT NULL, 
	fecha_nac		smalldatetime	NULL,
	pais			varchar	(40)	NULL, 
    CONSTRAINT PK_Piloto PRIMARY KEY (
		licencia_P asc
	),
	constraint CK_edad_mayor_dieciseis check(
	/*Calcula la diferencia de fechas*/
		DATEDIFF(year,fecha_nac,SYSDATETIME()) > 16
	)
)
GO

-- =====================
-- [Copiloto]
-- =====================

IF OBJECT_ID('Copiloto', 'U') IS NOT NULL
  DROP TABLE Copiloto
GO

CREATE TABLE Copiloto
(
	licencia_C int NOT NULL, 
	nombre varchar(60) not null,
	fecha_nac smalldatetime null,
	pais varchar(40) null,	 
    CONSTRAINT PK_copiloto PRIMARY KEY 
	(
		licencia_C ASC
	),
	constraint CK_edad_C_mayor_dieciseis check
	(
		DATEDIFF(year,fecha_nac,SYSDATETIME()) >16
	)	
)
GO

-- =====================
-- [Marca]
-- =====================

IF OBJECT_ID('Marca', 'U') IS NOT NULL
  DROP TABLE Marca
GO

CREATE TABLE Marca
(
	mar_id smallint identity(1,1) not null,
	nombre varchar(30) not null,	
	sede varchar(30),
	pais varchar(40),
	web varchar(35),
    CONSTRAINT PK_Marca PRIMARY KEY 
	(
		mar_id asc
	)
)
GO

-- =====================
-- [Coche]
-- =====================
IF OBJECT_ID('Coche', 'U') IS NOT NULL
  DROP TABLE Coche
GO

CREATE TABLE Coche
(	
	matricula char(7) not null,
	modelo varchar(25) not null,
	potencia smallint null,
	mar_id smallint not null,	
    CONSTRAINT PK_Coche PRIMARY KEY 
	(
		matricula ASC
	),	
	constraint FK_coche_marca foreign key
	( mar_id )
	references Marca(mar_id)
)
GO

-- =====================
-- [Equipo]
-- =====================
IF OBJECT_ID('Equipo', 'U') IS NOT NULL
  DROP TABLE Equipo
GO

CREATE TABLE Equipo
(
	Eq_id int identity(1,1) not null,
	licencia_P int not null,
	licencia_C int not null,
	matricula char(7) not null,
	 CONSTRAINT PK_Equipo PRIMARY KEY 
	(
		Eq_id ASC
	),

	CONSTRAINT FK_piloto FOREIGN KEY
	( licencia_P )
	references Piloto(licencia_P),
	CONSTRAINT FK_copiloto FOREIGN KEY
	( licencia_C )
	references Copiloto(licencia_C),
	CONSTRAINT FK_matricula FOREIGN KEY
	( matricula )
	references Coche(matricula),
)
GO


-- =========================================
-- [Puntuacion]
-- =========================================
USE RALLY
GO

IF OBJECT_ID('Puntuacion', 'U') IS NOT NULL
  DROP TABLE Puntuacion
GO

CREATE TABLE Puntuacion
(
	pun_id int identity(1,1) NOT NULL, 
	P1 int NULL, 
	P2 int NULL, 
	P3 int NULL,
	M1 int NULL, 
	M2 int NULL, 
	M3 int NULL, 
    CONSTRAINT PK_Puntuacion PRIMARY KEY 
	(
		pun_id ASC
	)
)
GO

-- =========================================
-- [Carrera]
-- =========================================
USE RALLY
GO

IF OBJECT_ID('Carrera', 'U') IS NOT NULL
  DROP TABLE Carrera
GO

CREATE TABLE Carrera
(
	carr_id int identity(1,1) NOT NULL, 
	nombre varchar(40) NOT NULL, 
	ubicacion varchar(30) NOT NULL, 
	superficie varchar(15) NULL,
	pun_id int NOT NULL,
    CONSTRAINT PK_Carrera PRIMARY KEY 
		(
			carr_id asc
		),	
    CONSTRAINT FK_Carrera_Puntuacion FOREIGN KEY(pun_id)
		REFERENCES Puntuacion (pun_id),
	CONSTRAINT CK_superficie CHECK
	(
		superficie IN ('Mixto','Asfalto','Nieve','Tierra','')
	)
)
GO


-- =========================================
-- [Participacion]
-- =========================================
USE RALLY
GO

IF OBJECT_ID('Participacion', 'U') IS NOT NULL
  DROP TABLE Participacion
GO

CREATE TABLE Participacion
(
	Eq_ID int NOT NULL, 
	carr_id int NOT NULL, 
	temporada smallint NOT NULL,
	puesto tinyint NOT NULL,
	clasificado bit NOT NULL,
	CONSTRAINT PK_Participacion PRIMARY KEY 
		(
			Eq_ID,carr_id,temporada
		),
	CONSTRAINT FK_Participacion_Equipo FOREIGN KEY(Eq_ID)
		REFERENCES Equipo(Eq_ID),

	CONSTRAINT FK_Participacion_Carrera FOREIGN KEY(carr_id)
		REFERENCES Carrera(carr_id),

    CONSTRAINT UQ_UnpuestoPorCarreraYTemporada UNIQUE
	(
		carr_id,temporada,puesto
	)	
)
GO








