-- Dimension Cliente
-- Creacion de la tabla clientes con informacion geografica

CREATE TABLE [Northwind_DW].dbo.Customer_Dim ([CustomerID] NVARCHAR(5) NOT NULL,
[ContactName] NVARCHAR(30), [CompanyName] NVARCHAR(40) NOT NULL, 
[Region] NVARCHAR(15),[City] NVARCHAR(15), [Country] NVARCHAR(15), Primary Key(CustomerID));

-- ETL consulta carga de dimension clientes
INSERT INTO [Northwind_DW].[dbo].Customer_Dim(CustomerID,ContactName,CompanyName,Region,City,Country)
SELECT CustomerID,ContactName,CompanyName,Region,City,Country
FROM Northwind.dbo.customers;