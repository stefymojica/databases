-- �Qu� clientes compraron el producto m�s caro? �Cu�l es este producto? 

SELECT DISTINCT D.[CompanyName],D.Country
	FROM [Northwind_DW].[dbo].[Order_fact] F
	INNER JOIN [Northwind_DW].[dbo].[Customer_Dim] D ON (F.CustomerID=D.CustomerID)
		where [ProductID]=38
		ORDER BY 1