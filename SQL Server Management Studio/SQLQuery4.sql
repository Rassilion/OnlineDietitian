/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [BlogID]
      ,[DietitianID]
      ,[Title]
      ,[BlogContent]
      ,[PostDate]
  FROM [OnlineDietitian].[dbo].[BlogPost]

