/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS ProductItemCode, 
  --    ,[ProductSubcategoryKey]
  --   ,[WeightUnitMeasureCode]
  -- ,[SizeUnitMeasureCode]
  p.[EnglishProductName] AS Product_Name, 
  pc.EnglishProductCategoryName AS Product_Category, 
  ps.EnglishProductSubcategoryName AS Product_Subcategory, 
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  p.[Color] AS Product_Color, 
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  p.[Size] AS Product_Size, 
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  p.[ProductLine] AS Product_Line, 
  -- ,[DealerPrice]
  --,[Class]
  --,[Style]
  p.[ModelName] AS Model_Name, 
  -- ,[LargePhoto]
  p.[EnglishDescription] AS Product_Description, 
  --  ,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --   ,[HebrewDescription]
  -- ,[ThaiDescription]
  -- ,[GermanDescription]
  --,[JapaneseDescription]
  -- ,[TurkishDescription]
  -- ,[StartDate]
  -- ,[EndDate]
  ISNULL(p.[Status], 'Outdated') AS [Product_Status] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] AS p 
  left join [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS ps ON ps.ProductCategoryKey = p.ProductSubcategoryKey 
  left join [AdventureWorksDW2019].[dbo].[DimProductCategory] AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
order by 
  p.ProductKey ASC
