create schema common

--DROP TABLE DIM_SETS
SELECT [set_num]
      ,s.[name] set_name
      ,[year]
      ,[theme_id]
      ,t.[name] theme_name
      ,[num_parts]
      ,p1.[name] parent_1 
      ,p2.[name] parent_2
        
        INTO DWH_LEGO.DIM_SETS
  FROM [STG_LEGO].[dbo].[stg_sets] s inner join
  [STG_LEGO].[dbo].[stg_themes] t on  ([theme_id]=id)
  inner join  STG_LEGO.[dbo].[stg_themes] p1 on (t.parent_id=p1.id)
    inner join  STG_LEGO.[dbo].[stg_themes] p2 on (p1.parent_id=p2.id)

--DROP TABLE DIM_PARTS


    SELECT [part_num]
      ,p.[name] part_name
      ,pc.[name] part_categpry
      INTO DWH_LEGO.DIM_PARTS
  FROM STG_LEGO.[dbo].[stg_parts] p
  inner join STG_LEGO.[dbo].[stg_part_categories] pc
  on (p.part_cat_id=pc.id)


  --DIM_COLORS
  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT [id]
      ,[name]
      ,[rgb]
      ,[is_trans]
      INTO DWH_LEGO.DIM_COLORS
  FROM STG_LEGO.[dbo].[stg_colors]

  
  SELECT * INTO DWH_LEGO.[dbo].[FACT_inventories]
  FROM STG_LEGO.[dbo].[STG_inventories]
  
  
    SELECT * INTO DWH_LEGO.[dbo].[FACT_inventories_sets]
  FROM STG_LEGO.[dbo].[STG_inventories_sets]
  
  
    SELECT * INTO DWH_LEGO.[dbo].[FACT_inventory_parts]
  FROM STG_LEGO.[dbo].[STG_inventory_parts]

 -- drop table agg_inventory
SELECT TOP (1000) [id]
      ,[version]
      ,i.[set_num]
      ,s.quantity set_quantity
       ,[part_num]--,[set_num]
      ,p.[color_id] 
      ,p.[quantity] part_quantity
      ,[is_spare]
      into DWH_LEGO.agg_inventory
  FROM STG_LEGO.[dbo].[FACT_inventories] i
  inner join STG_LEGO.[dbo].[FACT_inventories_sets] s on id=s.inventory_id
  inner join STG_LEGO.[dbo].[FACT_inventory_parts] p on id=p.[inventory_id]