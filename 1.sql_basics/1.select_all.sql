-- Se ha solicitado un informe de todos los clientes y su información geográfica. Obtener de la tabla Customers el nombre de la compañía, su ciudad, región y país.

SELECT [CompanyName]
	  ,[City]
	  ,[Region]
	  ,[Country]
FROM [Northwind].[dbo].[Customers]