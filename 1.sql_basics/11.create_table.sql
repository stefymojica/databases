-- Se ha solicitado un informe recurrente que contenga el nombre de la categoría, el nombre del producto, el año de la orden y la suma de la cantidad solicitada.
-- Para ello, se ha decido crear una tabla que se irá actualizando poco a poco. En este punto, se procederá a crear la tabla.

CREATE TABLE [dbo].[Tabla_resumen_12](
	[CategoryName][nvarchar](50) NULL,
	[ProductName] [nvarchar] (50) NULL,
	[YearOrder] [int] NULL,
	[Quantity] [smallint] NULL
) ON [PRIMARY]
GO