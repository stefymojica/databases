CREATE TABLE [Northwind_DW].[dbo].[DIM_J_A�O](
			[ID_A�O] [int] NOT NULL,
			[ID_A�O_AA] [int] NULL
PRIMARY KEY
(
			[ID_A�O] ASC
)
) ON [PRIMARY]

INSERT INTO [Northwind_DW].[dbo].[DIM_J_A�O]
select distinct
Year (o.OrderDate) ID_A�O,
Year (o.OrderDate)-1 ID_A�O_AA
FROM Northwind.dbo.orders o