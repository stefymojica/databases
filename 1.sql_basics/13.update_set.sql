-- Debido a un fallo en el sistema operacional que registraba las ventas, se detectó que en el año 1998 se perdió un 5 % de la cantidad de productos vendidos.
-- Se ha solicitado actualizar los datos de la tabla resumen que se acaba de crear, lo que incrementa la suma de las cantidades solicitas en 1998 en un 5 %.

UPDATE [Northwind].[dbo].[Tabla_resumen_12]
SET [Quantity]=[Quantity]*1.05
WHERE [YearOrder]=1998