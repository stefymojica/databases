CREATE TABLE [Northwind_DW].[dbo].[DIM_J_AÑO](
			[ID_AÑO] [int] NOT NULL,
			[ID_AÑO_AA] [int] NULL
PRIMARY KEY
(
			[ID_AÑO] ASC
)
) ON [PRIMARY]

INSERT INTO [Northwind_DW].[dbo].[DIM_J_AÑO]
select distinct
Year (o.OrderDate) ID_AÑO,
Year (o.OrderDate)-1 ID_AÑO_AA
FROM Northwind.dbo.orders o