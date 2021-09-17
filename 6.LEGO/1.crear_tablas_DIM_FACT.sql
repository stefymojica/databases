CREATE TABLE [dbo].[DIM_PARTS](
	[Id] [varchar](Max) NOT NULL,
	[Name] [varchar](max) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DIM_COLOR](
	[id] [varchar](Max) NOT NULL,
	[rgb] [varchar](max) NULL,
	[is_trans] [varchar](MAX) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[DIM_SETS](
	[set_num] [varchar](Max) NOT NULL,
	[set_name] [varchar](max) NULL,
	[year] [varchar](MAX) NULL,
	[theme_id] [varchar](MAX) NULL,
	[theme_name] [varchar](MAX) NULL,
	[num_parts] [varchar](MAX) NULL,
	[parent_1] [varchar](MAX) NULL,
	[parent_2] [varchar](MAX) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FACT_inventories](
	[id] [varchar](Max) NOT NULL,
	[version] [varchar](max) NULL,
	[set_num] [varchar](MAX) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FACT_inventories_sets](
	[inventory_id] [varchar](Max) NOT NULL,
	[set_num] [varchar](max) NULL,
	[quantity] [varchar](MAX) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[FACT_inventory_parts](
	[inventory_id] [varchar](Max) NOT NULL,
	[part_num] [varchar](max) NULL,
	[color_id] [varchar](MAX) NULL,
	[quantity] [varchar](MAX) NULL,
	[is_spare] [varchar](MAX) NULL
) ON [PRIMARY]
GO