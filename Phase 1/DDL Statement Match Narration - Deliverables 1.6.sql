USE [Project_BGT]
GO

/****** Object:  Table [Project_BGT].[Match Narration]    Script Date: 21-03-2023 13:29:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Project_BGT].[Match Narration](
	[Test Series Year] [varchar](50) NOT NULL,
	[Test Number] [int] NOT NULL,
	[Venue] [varchar](50) NOT NULL,
	[Winner] [varchar](50) NOT NULL,
	[Win Margin] [varchar](50) NOT NULL,
	[MOTM] [varchar](50) NOT NULL,
	[Ind captain] [varchar](50) NOT NULL,
	[Aus captain] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Match Narration] PRIMARY KEY CLUSTERED 
(
	[Test Series Year] ASC,
	[Test Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Project_BGT].[Match Narration]  WITH CHECK ADD  CONSTRAINT [FK_Match Narration_Match_Location] FOREIGN KEY([Venue])
REFERENCES [Project_BGT].[Match_Location] ([Venue])
GO

ALTER TABLE [Project_BGT].[Match Narration] CHECK CONSTRAINT [FK_Match Narration_Match_Location]
GO

ALTER TABLE [Project_BGT].[Match Narration]  WITH CHECK ADD  CONSTRAINT [FK_Match Narration_Streak_Achievement] FOREIGN KEY([Test Series Year])
REFERENCES [Project_BGT].[Streak_Achievement] ([Test Series Year])
GO

ALTER TABLE [Project_BGT].[Match Narration] CHECK CONSTRAINT [FK_Match Narration_Streak_Achievement]
GO


