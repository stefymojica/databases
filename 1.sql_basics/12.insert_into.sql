-- Tomando como base la petición del ejercicio 11 y una vez creada la tabla, se procederá a insertar datos en dicha tabla.
-- Para insertar los datos necesarios para la tabla resumen, se creará una consulta SQL que después, al usar el comando “insert into Nombre_tabla”, alimentará la tabla, 
-- como se especifica en la teoría de esta unidad. Para ello, se habrá de vincular las tablas categorías, productos, orders y orders details.Nombre de la categoría.Nombre del producto.
-- Año de la orden.Suma de la cantidad solicitada

INSERT INTO [dbo].[Tabla_resumen_12]
SELECT [CategoryName],
[ProductName],
YEAR([OrderDate]) year_order,
SUM(ORDD.Quantity) CANTIDAD
	FROM [Northwind].[dbo].[Orders] ORD
	INNER JOIN [Northwind].[dbo].[Order Details] ORDD
	ON (ORD.OrderID=ORDD.OrderID)
	INNER JOIN [Northwind].[dbo].[Products] PROD
	ON (ORDD.ProductID=PROD.ProductID)
	INNER JOIN [dbo].[Categories] CAT
	ON (CAT.CategoryID=PROD.CategoryID)
	GROUP BY [CategoryName],[ProductName],YEAR([OrderDate])
	ORDER BY 3, 4 DESC