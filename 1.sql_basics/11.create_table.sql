-- Se ha solicitado un informe recurrente que contenga el nombre de la categor�a, el nombre del producto, el a�o de la orden y la suma de la cantidad solicitada.
-- Para ello, se ha decido crear una tabla que se ir� actualizando poco a poco. En este punto, se proceder� a crear la tabla.

CREATE TABLE [dbo].[Tabla_resumen_12](
	[CategoryName][nvarchar](50) NULL,
	[ProductName] [nvarchar] (50) NULL,
	[YearOrder] [int] NULL,
	[Quantity] [smallint] NULL
) ON [PRIMARY]
GO