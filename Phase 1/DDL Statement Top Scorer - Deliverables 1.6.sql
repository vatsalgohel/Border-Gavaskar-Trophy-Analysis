USE [Project_BGT]
GO

/****** Object:  Table [Project_BGT].[Top_Scorer]    Script Date: 21-03-2023 13:30:43 ******/
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


