USE [Project_BGT]
GO

/****** Object:  Table [Project_BGT].[Innings_Records]    Script Date: 21-03-2023 13:27:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Project_BGT].[Innings_Records](
	[Test Series Year] [varchar](50) NOT NULL,
	[Test Number] [int] NOT NULL,
	[Innings] [int] NOT NULL,
	[Highest Score] [varchar](50) NOT NULL,
	[Runs by highest scorer] [int] NOT NULL,
	[Best Bowler] [varchar](50) NOT NULL,
	[Wickets by best bowler] [int] NOT NULL,
	[Team Total] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Innings_Records_1] PRIMARY KEY CLUSTERED 
(
	[Test Series Year] ASC,
	[Test Number] ASC,
	[Innings] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Project_BGT].[Innings_Records]  WITH CHECK ADD  CONSTRAINT [FK_Innings_Records_Match Narration] FOREIGN KEY([Test Series Year], [Test Number])
REFERENCES [Project_BGT].[Match Narration] ([Test Series Year], [Test Number])
GO

ALTER TABLE [Project_BGT].[Innings_Records] CHECK CONSTRAINT [FK_Innings_Records_Match Narration]
GO

ALTER TABLE [Project_BGT].[Innings_Records]  WITH CHECK ADD  CONSTRAINT [FK_Innings_Records_Top_Scorer] FOREIGN KEY([Highest Score])
REFERENCES [Project_BGT].[Top_Scorer] ([Highest Scorer])
GO

ALTER TABLE [Project_BGT].[Innings_Records] CHECK CONSTRAINT [FK_Innings_Records_Top_Scorer]
GO


