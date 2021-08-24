-- ¿Cuál es el nombre completo y el país del empleado que más descuentos ha realizado?

SELECT TOP 1
	[LastName]
	,[FirstName]
	,[Country]
	,SUM([UnitPrice]*[Quantity]*[Discount]) DESCUENTO_TOTAL
	FROM [Northwind_DW].[dbo].[Order_fact] F
	INNER JOIN
	[Northwind_DW].[dbo].[Employee_Dim] D ON(D.[EmployeeID]=F.[EmployeeID])
	GROUP BY [LastName]
		,[FirstName]
		,[Country]
			ORDER BY 4 DESC
