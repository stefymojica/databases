-- Como se han actualizado las cantidades, la empresa quiere que esto quede reflejado en los nombres de las categor�as para poder identificar los datos manipulados. 
--Por ello, se ha solicitado actualizar los datos de la tabla resumen, cambiar la descripci�n de las categor�as de los productos vendidos en 1998 y concatenar la descripci�n 'ADD 5 PERC'

SELECT DISTINCT [CategoryName]
	FROM [Northwind].[dbo].[Tabla_resumen_12]
	WHERE [YearOrder]=1998


