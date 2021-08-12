-- Una vez entregado el informe anterior, se ha detectado un problema con el campo región para los clientes de Brasil. 
-- Por lo que se ha solicitado el número de clientes de Brasil que tienen el campo región indicado, es decir: que no sea nulo.


SELECT [CompanyName]
	  ,[City]
	  ,[Region]
	  ,[Country]
FROM [Northwind].[dbo].[Customers]
WHERE  [Region] is not null
and [Country]='Brazil'