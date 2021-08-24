-- Dimension dias
-- Creacion de tabla con días, mes, trimestre y años 

CREATE TABLE [Northwind_DW].dbo.Day_Dim
( [Date] DATETIME,
[DayName] VARCHAR(50),
[WeekOfMonth] INT,
[MonthName] VARCHAR (50),
[Quarter] INT,
[Year]
INT PRIMARY KEY (DATE) );

-- Insertar datos en la tabla dimension dias
--ETL consulta carga dimension días

INSERT INTO [Northwind_DW].[dbo].[Day_Dim]( Date, DayName, WeekOfMonth, MonthName, Quarter, Year)
select distinct o.OrderDate Date,
datename(WEEKDAY,o.OrderDate) DayName,
DATEPART(Week,o.OrderDate) WeekOfMonth,
datename(MONTH, o.OrderDate)MonthName,
DATEPART(QUARTER,o.OrderDate) Quarter,
Year (o.OrderDate) Year
FROM Northwind.dbo.Orders o