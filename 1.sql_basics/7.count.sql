-- Obtener el n�mero de productos activos y los que estan dados de baja. Para ello, se realizar� una cuenta de productos, agrup�ndolos por el camo ��Discontinued�.

SELECT [Discontinued], count([ProductID]) _NUM_PRODUCTS
FROM [Northwind].[dbo].[Products]
GROUP BY [Discontinued]