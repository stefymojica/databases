-- En esta tabla de resumen en la que se est� trabajando, no se quieren tener datos anteriores a 1997, por lo que se pide borrar de la tabla resumen los datos de los a�os inferiores a 1997.

SELECT DISTINCT [YearOrder]
	FROM [Northwind].[dbo].[Tabla_resumen_12]