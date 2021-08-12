-- Obtener el número de productos activos y los que estan dados de baja. Para ello, se realizará una cuenta de productos, agrupándolos por el camo ‘”Discontinued”.

SELECT [Discontinued], count([ProductID]) _NUM_PRODUCTS
FROM [Northwind].[dbo].[Products]
GROUP BY [Discontinued]