/****** Script for SelectTopNRows command from SSMS  ******/
-- Cleansed Customer Table
SELECT 
  [CustomerKey], 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.FirstName as First_Name, 
  -- ,[MiddleName]
  c.LastName as Last_Name, 
  c.FirstName + ' ' + c.LastName as Full_Name, 
  --Combined First and Last name
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus
  --,[Suffix]
  case c.Gender when 'M' Then 'Male' When 'F' then 'Female' END as Gender, 
  --      ,[EmailAddress]
  --  ,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.DateFirstPurchase as DateFirstPurchase, 
  --,[CommuteDistance]
  g.city as [Customer_City] --joined in customer city from Geography Table
FROM 
  dbo.DimCustomer as c 
  left join dbo.DimGeography as g ON g.GeographyKey = c.GeographyKey 
Order by 
  CustomerKey ASC --Ordered List by Customer Key
