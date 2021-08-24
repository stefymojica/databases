-- Tabla de hechos Order Fact
-- Creacion tabla hechos que mezcla datos de orders y orders details

CREATE TABLE [Northwind_DW].[dbo].Order_fact ( [OrdersID] INT NOT NULL, 
[OrderDate] DATETIME, [ProductID] INT NOT NULL, [CustomerID] NVARCHAR(5), [EmployeeID] INT,
[RequiredDate] DATETIME, [ShippedDate] DATETIME,
[ShipVia] INT, [Date] DATETIME, [Quantity] SMALLINT NOT NULL, [Discount] REAL NOT NULL,
[UnitPrice] MONEY NOT NULL, [Freight] MONEY, [UnitsInStock] SMALLINT,
[UnitsInOrder] SMALLINT, [ReorderLevel] SMALLINT,

-- PRIMARY KEY (OrderID),
--CONSTRAINT FK_customer FOREIGHT KEY (CustomerID) REFERENCES Customer_Dim(CustomerID),
--CONSTRAINT FK_date FOREIGHT KEY (Date) REFERENCES dbo.Day_Dim(Date),
--CONSTRAINT FK_employee FOREIGHT KEY (EmployeeID) REFERENCES dbo.Employee_Dim(EmployeeID),
--CONSTRAINT FK_product FOREIGHT KEY (ProductID) REFERENCES dbo.Product_Dim(ProductID)
);

-- Dado que hay registros que tienen valores de orden duplicados de acuerdo con la tabla de productos, podemos ignorarlos eliminando la rstriccion como se muestra a continuacion

--ALTER TABLE [Northwind_DW[.[dbo].Order_fact DROP CONSTRAINT [PK_Order_fa_c3905BAF6CC49027];
--ETL consulta carga tabla de hechos

INSERT INTO [Northwind_DW].[dbo].Order_fact(OrdersID, OrderDate, ProductID, CustomerID,
EmployeeID, RequiredDate, ShippedDate, ShipVia, Date, Quantity, Discount, UnitPrice, Freight,
UnitsInStock, UnitsInOrder, ReorderLevel)
SELECT o.OrderID, o.OrderDate, p.ProductID, o.CustomerID, o.EmployeeID,
o.RequiredDate, o.ShippedDate, o.ShipVia,
o.OrderDate, od.Quantity, od.Discount, od.UnitPrice, o.Freight,
p.UnitsInStock, p.UnitsOnOrder, p.ReorderLevel
FROM Northwind.dbo.Orders o JOIN Northwind.dbo.[Order Details] od ON od.OrderID = o.OrderID
JOIN Northwind.dbo.Products p ON od.ProductID = p.ProductID;

--PRIMARY KEY (OrderID), CONSTRAINT FK_customer FOREIGHT KEY (customerID) REFERENCES Customer_Dim(CustomerID), CONSTRAINT FK_date FOREIGHT KEY (Date) REFERENCES dbo.Day_Dim(Date), CONSTRAINT FK_employee FOREIGHT KEY (EmployeeID) REFERENCES dbo.Employee_Dim(EmployeeID), CONSTRAINT FK_product FOREIGHT KEY (ProductID) REFERENCES dbo.Product_Dim(ProductID)
