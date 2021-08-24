-- Dimension Products
-- Creacion de la tabla productos y categoria

CREATE TABLE [Northwind_DW].dbo.Products_Dim ([ProductID] INT NOT NULL,
[ProductName] NVARCHAR(40) NOT NULL, [CategoryID] INT, [QuantityPerUnit] NVARCHAR(20), PRIMARY KEY (ProductID));

-- ETL consulta carga de dimension y cateogrias

INSERT INTO [Northwind_DW].[dbo].Products_Dim(ProductID,ProductName,CategoryID,QuantityPerUnit)
SELECT ProductID, ProductName, CategoryID, QuantityPerUnit
FROM Northwind.dbo.Products;