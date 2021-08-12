-- Una vez entregado el informe anterior, se ha detectado un problema con el campo regi�n para los clientes de Brasil. 
-- Por lo que se ha solicitado el n�mero de clientes de Brasil que tienen el campo regi�n indicado, es decir: que no sea nulo.


SELECT [CompanyName]
	  ,[City]
	  ,[Region]
	  ,[Country]
FROM [Northwind].[dbo].[Customers]
WHERE  [Region] is not null
and [Country]='Brazil'