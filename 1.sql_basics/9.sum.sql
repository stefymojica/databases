-- Igual que antes, han solicitado obtener el nombre de la categor�a que m�s cantidad ha vendido.
-- La consulta es similar a la anterior, pero se debe incluir una tabla m�s y cambiar el campo que se muestra por el nombre de la categor�a

SELECT TOP 1 [CategoryName],
SUM(ORD.Quantity) CANTIDAD
	FROM[Northwind].[dbo].[Order Details] ORD
	INNER JOIN [Northwind].[dbo].[Products] PROD
	ON(ORD.ProductID=PROD.ProductID)
	INNER JOIN [Northwind].[dbo].[Categories] CAT
	ON(CAT.CategoryID=PROD.CategoryID)
	GROUP BY [CategoryName]
	ORDER BY 2 DESC