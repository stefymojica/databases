-- Tras los resultados anteriores, se indica que quieren centrar las campa�as de marketing en aquellas categor�as cuyo precio m�s alto sea mayor a 50 �.
-- Para obtenerlas, se debe usar la cl�usula Having, como se indica en la teor�a de esta unidad.

SELECT [CategoryName]
	   ,MAX([UnitPrice]) PRECIO_MAX
	   ,MIN([UnitPrice]) PRECIO_MIN
FROM [Northwind].[dbo].[Products] PROD
INNER JOIN [dbo].[Categories] CAT
ON (PROD.CategoryID=CAT.CategoryID)
GROUP BY [CategoryName]
HAVING MAX([UnitPrice])>50