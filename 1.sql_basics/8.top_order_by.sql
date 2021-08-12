-- En este tipo de solicitudes es muy recurrente pedir rankings de productos. A continuaci�n, nos solicitan obtener los nombres de los cinco productos m�s vendidos en cuanto a cantidad.
-- Para ello, se usar� la funci�n �Top 5� de una agrupaci�n ordenada descendentemente. 
-- En este caso, hay que usar dos tablas: Products, donde est� el nombre del producto, y Orders details, que tiene la cantidad.

SELECT TOP 5 PROD.ProductName,
SUM(ORD.Quantity) CANTIDAD
	FROM [Northwind].[dbo].[Order Details] ORD
	INNER JOIN [Northwind].[dbo].[Products] PROD
	ON (ORD.ProductID=PROD.ProductID)
	GROUP BY PROD.ProductName
	ORDER BY 2 DESC