
-- CLEANSED DIM_CUSTOMER TABLE
SELECT c.CustomerKey AS [Customer Key]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.FirstName AS [First Name]
      --,[MiddleName]
      ,c.LastName AS [Last Name]
	  ,c.LastName + ' ' + c.FirstName AS [Full Name]
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]

      ,CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS [Gender]
	  ,c.gender AS [Test]
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
     -- ,[SpanishEducation]
      --,[FrenchEducation]
     -- ,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,c.DateFirstPurchase AS [Date First Purchase],

      --,[CommuteDistance]

	  g.city AS [Customer City]

  FROM 
	[AdventureWorksDW2022].[dbo].[DimCustomer] as c
	left join [AdventureWorksDW2022].[dbo].[DimGeography] as g ON g.geographykey=c.geographykey

ORDER BY
	CustomerKey ASC
