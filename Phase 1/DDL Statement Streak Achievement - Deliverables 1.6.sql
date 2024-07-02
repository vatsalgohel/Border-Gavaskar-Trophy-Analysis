USE [Project_BGT]
GO

/****** Object:  Table [Project_BGT].[Streak_Achievement]    Script Date: 21-03-2023 13:30:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Project_BGT].[Streak_Achievement](
	[Test Series Year] [varchar](50) NOT NULL,
	[MOTS] [varchar](50) NOT NULL,
	[Series Win] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Streak_Achievement] PRIMARY KEY CLUSTERED 
(
	[Test Series Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


