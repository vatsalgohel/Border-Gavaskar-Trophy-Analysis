USE [Project_BGT]
GO

/****** Object:  Table [Project_BGT].[Match_Location]    Script Date: 21-03-2023 13:29:54 ******/
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


