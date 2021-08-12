-- Otra solicitud de logística es obtener el nombre de los productos, cantidad por unidad y precio unitario de los productos activos, con precio unitario entre 20 y 30 €.
SELECT [ProductName]
	   ,[QuantityPerUnit]
	   ,[UnitPrice]
FROM [Northwind].[dbo].[Products]
WHERE [Discontinued]='False'
and [UnitPrice] between 20 and 30