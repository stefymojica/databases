-- El departamento de marketing quiere lanzar una serie de ofertas, y para ello necesita saber cuáles son los productos con el precio más alto y más bajo por categoría de producto
-- Se usarán las funciones max y min y la agrupación de campos por categoria. En este caso, entran en juego dos tablas productos y categorias,
-- que necesitaran tener un cruce por el campo “CategoryId”

SELECT [CategoryName]
	   ,MAX([UnitPrice]) PRECIO_MAX
	   ,MIN([UnitPrice]) PRECIO_MIN
FROM [Northwind].[dbo].[Products] PROD
INNER JOIN [dbo].[Categories] CAT
ON (PROD.CategoryID=CAT.CategoryID)
GROUP BY [CategoryName]