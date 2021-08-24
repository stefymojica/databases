-- Dimension empleado
-- creacion de tabla empleado con su zona geografica

CREATE TABLE [Northwind_DW].dbo.Employee_Dim ([EmployeeID] INT NOT NULL, [LastName]
NVARCHAR(20) NOT NULL, [FirstName] NVARCHAR(10) NOT NULL, [Region] NVARCHAR(15), [City] NVARCHAR(15), [Country] NVARCHAR(15)
PRIMARY KEY (EmployeeID) );

-- ETL consulta carga dimension empleado

INSERT INTO [Northwind_DW].[dbo].Employee_Dim(EmployeeID,LastName,FirstName,Region,City,Country)
SELECT EmployeeID,LastName,FirstName,Region,City,Country
FROM Northwind.dbo.Employees;