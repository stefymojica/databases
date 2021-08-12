-- Una nueva solicitud de marketing nos lleva a obtener los clientes que est�nn dados de alta, pero que no hayan realizado ninguna compra,
-- para enfocar una campa�a de marketing sobre ellos.Para localizarlos, se deber�n usar las tablas Customers y Orders, y al agrupar por el nombre de la compa��a se contar�n el n�mero de �rdenes
-- y se buscar�n aquellos clientes que no tengan peticiones. Se har� mediante el uso de la cl�usula having. La soluci�n a nivel de c�digo puede variar, pero no el resultado.

SELECT [CompanyName],
count([OrderID])
FROM [dbo].[customers] CUST
LEFT JOIN [Northwind].[dbo].[Orders] ORD
ON (ORD.CustomerID=CUST.CustomerID)
GROUP BY [CompanyName]
HAVING count ([OrderID])=0