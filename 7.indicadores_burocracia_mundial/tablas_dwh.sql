CREATE TABLE [dbo].[DIM_COUNTRY](
	[ID_PAIS] [varchar](3) NOT NULL PRIMARY KEY,
	[DESC_PAIS] [varchar](250) NULL,
	[ISO2] [varchar](250) NULL,
	[DESC_MONEDA] [varchar](250) NULL,
	[DESC_REGION] [varchar](250) NULL,
	[DESC_GRUPO] [varchar](250) NULL,
	[System of National Accounts] [varchar](250) NULL,
	[System of trade] [varchar](250) NULL
) ON [PRIMARY]

CREATE TABLE [dbo].[DIM_METRICAS](
	[ID_METRICA] [varchar](25) NOT NULL PRIMARY KEY,
	[DESC_METRICA] [varchar](250) NULL,
) ON [PRIMARY]

CREATE TABLE [dbo].[FACT_WWBI](
	[ID_PAIS] [varchar](3) NULL,
	[ID_METRICA] [varchar](25) NULL,
	[ID_AÑO] INT NULL,
	[IN_VALUE] FLOAT NULL
) ON [PRIMARY]

