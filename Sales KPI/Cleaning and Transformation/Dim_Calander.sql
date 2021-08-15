/****** Script for SelectTopNRows command from SSMS  ******/
--Cleansed Dim_DateTable--
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date, 
  -- ,[DayNumberOfWeek] ,
  [EnglishDayNameOfWeek] as Day, 
  -- ,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  -- ,[DayNumberOfMonth]
  --,[DayNumberOfYear], 
  [WeekNumberOfYear] as Week_Nr, 
  [EnglishMonthName] as Month, 
  LEFT([EnglishMonthName], 3) as Month_Short, 
  --,[SpanishMonthName]
  --,[FrenchMonthName], 
  [MonthNumberOfYear]as Month_No, 
  [CalendarQuarter]as Quater, 
  [CalendarYear] as Year --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
where CalendarYear >= 2019	
