USE [Project_BGT]
GO
/****** Object:  Schema [Project_BGT]    Script Date: 20-03-2023 15:56:21 ******/
CREATE SCHEMA [Project_BGT]
GO
/****** Object:  Table [Project_BGT].[Innings_Records]    Script Date: 20-03-2023 15:56:21 ******/
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
/****** Object:  Table [Project_BGT].[Match Narration]    Script Date: 20-03-2023 15:56:21 ******/
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
/****** Object:  Table [Project_BGT].[Match_Location]    Script Date: 20-03-2023 15:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Project_BGT].[Match_Location](
	[Venue] [varchar](50) NOT NULL,
	[Host] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Match_Location] PRIMARY KEY CLUSTERED 
(
	[Venue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Project_BGT].[Match_Narration]    Script Date: 20-03-2023 15:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Project_BGT].[Match_Narration](
	[Test Series Year] [nchar](10) NULL,
	[Test Number] [nchar](10) NULL,
	[Venue] [nchar](10) NULL,
	[Winner] [nchar](10) NULL,
	[Win Margin] [nchar](10) NULL,
	[MOTM] [nchar](10) NULL,
	[Ind captain] [nchar](10) NULL,
	[Aus captain] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Project_BGT].[Streak_Achievement]    Script Date: 20-03-2023 15:56:21 ******/
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
/****** Object:  Table [Project_BGT].[Top_Scorer]    Script Date: 20-03-2023 15:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Project_BGT].[Top_Scorer](
	[Highest Scorer] [varchar](50) NOT NULL,
	[Team] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Top_Scorer] PRIMARY KEY CLUSTERED 
(
	[Highest Scorer] ASC
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
