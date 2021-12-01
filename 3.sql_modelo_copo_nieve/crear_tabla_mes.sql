CREATE TABLE [Northwind_DW].[dbo].[DIM_J_MES] (
			[ID_MES] [int] NOT NULL,
			[DESC_MES] [nvarchar] (30) NULL,
			[NUM_MES] [int] NULL,
			[DESC_AÑO_MES] [nvarchar] (35) NULL,
			[ID_TRIM] [varchar] (6) NULL
			PRIMARY KEY CLUSTERED
(
			[ID_MES] ASC
)
) ON [PRIMARY]
GO

ALTER TABLE [Northwind_DW].[dbo].[DIM_J_MES] WITH CHECK ADD  CONSTRAINT
[FK_DIM_J_MES_DIM_J_TRIMESTRE] FOREIGN KEY([ID_TRIM])
REFERENCES [Northwind_DW].[dbo].[DIM_J_TRIMESTRE] ([ID_TRIM])
GO

ALTER TABLE [Northwind_DW].[dbo].[DIM_J_MES] CHECK CONSTRAINT
[FK_DIM_J_MES_DIM_J_TRIMESTRE]
GO

INSERT INTO [Northwind_DW].DBO.[DIM_J_MES]
select distinct
CAST(CONVERT (VARCHAR(6), o.OrderDate ,112) AS INT) ID_MES,
DATENAME(MM,o.OrderDate) DESC_MES,
MONTH(o.OrderDate) NUM_MES,
DATENAME(MM,o.OrderDate)+'-'+CAST(YEAR(o.OrderDate) AS varchar(4)) DESC_AÑO_MES,
cast(Year (o.OrderDate ) as varchar(4))+'T'+cast(DATEPART(qq,o.OrderDate) as varchar(1)) ID_TRIM
FROM Northwind.dbo.Orders o
ORDER BY 1