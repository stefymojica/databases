-- Una nueva solicitud de marketing nos lleva a obtener los clientes que esténn dados de alta, pero que no hayan realizado ninguna compra,
-- para enfocar una campaña de marketing sobre ellos.Para localizarlos, se deberán usar las tablas Customers y Orders, y al agrupar por el nombre de la compañía se contarán el número de órdenes
-- y se buscarán aquellos clientes que no tengan peticiones. Se hará mediante el uso de la cláusula having. La solución a nivel de código puede variar, pero no el resultado.

SELECT [CompanyName],
count([OrderID])
FROM [dbo].[customers] CUST
LEFT JOIN [Northwind].[dbo].[Orders] ORD
ON (ORD.CustomerID=CUST.CustomerID)
GROUP BY [CompanyName]
HAVING count ([OrderID])=0