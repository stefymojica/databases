CREATE TABLE [Northwind_DW].[dbo].[DIM_J_DIA] (
			[DT_FECHA] [datetime] NOT NULL,
			[ID_FECHA] [int] NULL,
			[DESC_FECHA] [varchar] (25) NULL,
			[NUM_DIA_SEMANA] [int] NULL,
			[DIA_SEMANA] [nvarchar] (30) NULL,
			[NUM_DIA_MES] [int] NULL,
			[NUM_DIA_AÑO] [int] NULL,
			[SEMANA_AÑO] [int] NULL,
			[ID_MES] [int] NULL
			PRIMARY KEY CLUSTERED
(
			[DT_FECHA] ASC
)
) ON [PRIMARY]

INSERT INTO [Northwind_DW].DBO.[DIM_J_DIA]
select distinct o.OrderDate DT_FECHA,
CAST(CONVERT (VARCHAR(8), o.OrderDate ,112) AS INT) ID_FECHA,
CONVERT (varchar(25), o.OrderDate ,6) DESC_FECHA,
DATEPART(DW,o.OrderDate) NUM_DIA_SEMANA,
DATENAME(DW,o.OrderDate) DIA_SEMANA,
DAY(o.OrderDate) NUM_DIA_MES,
DATEPART(DY,o.OrderDate) NUM_DIA_AÑO,
DATEPART(DY,o.OrderDate) SEMANA_AÑO,
CAST(CONVERT (VARCHAR(6), o.OrderDate ,112) AS INT) ID_MES
FROM Northwind.dbo.Orders o
ORDER BY 1
