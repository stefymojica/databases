-- Del departamento de log�stica quieren obtener los productos (con su nombre, unidades en stock y unidades pedidas) que est�n dados de baja. 

SELECT [ProductName]
	   ,[UnitsInStock]
	   ,[UnitsOnOrder]
	   ,[Discontinued]
FROM [Northwind].[dbo].[Products]
WHERE [Discontinued]='True'