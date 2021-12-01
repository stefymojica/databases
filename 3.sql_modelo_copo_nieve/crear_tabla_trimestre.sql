CREATE TABLE [Northwind_DW].[dbo].[DIM_J_TRIMESTRE](
			[ID_TRIM] [varchar](6) NOT NULL,
			[DESC_TRIM] [varchar] (6) NULL,
			[NUM_TRIM] [int] NULL,
			[DESC_AÑO_TRIM] [varchar] (11) NULL,
			[ID_AÑO] [int] NULL
			PRIMARY KEY CLUSTERED
(
			[ID_TRIM] ASC
)
) ON [PRIMARY]
GO

INSERT INTO [Northwind_DW].dbo.[DIM_J_TRIMESTRE]
select distinct
cast(Year (o.OrderDate ) as varchar(4)) +'T'+cast(DATEPART(qq,o.OrderDate) as 
varchar(1)) ID_TRIM,
'TRIM '+cast(DATEPART(qq,o.OrderDate) as varchar(1)) DESC_TRIM,
DATEPART(qq,o.OrderDate) NUM_TRIM,
'TRIM-'+cast(DATEPART(qq,o.OrderDate) as varchar(1))+'-'+cast(Year (o.OrderDate
) as varchar(4))DESC_AÑO_TRIM,
Year (o.OrderDate ) ID_AÑO

FROM Northwind.dbo.Orders o
ORDER BY 1

