/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Test Series Year]
      ,[Test Number]
      ,[Venue]
      ,[Winner]
      ,[Win Margin Descriptive]
      ,[Man of the Match]
      ,[Ind captain]
      ,[Aus captain]
  FROM [Project_BGT].[Project_BGT].[Match_Narration]