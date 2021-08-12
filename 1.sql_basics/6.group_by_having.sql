-- Tras los resultados anteriores, se indica que quieren centrar las campañas de marketing en aquellas categorías cuyo precio más alto sea mayor a 50 €.
-- Para obtenerlas, se debe usar la cláusula Having, como se indica en la teoría de esta unidad.

SELECT [CategoryName]
	   ,MAX([UnitPrice]) PRECIO_MAX
	   ,MIN([UnitPrice]) PRECIO_MIN
FROM [Northwind].[dbo].[Products] PROD
INNER JOIN [dbo].[Categories] CAT
ON (PROD.CategoryID=CAT.CategoryID)
GROUP BY [CategoryName]
HAVING MAX([UnitPrice])>50