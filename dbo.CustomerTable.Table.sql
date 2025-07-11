USE [JKLG]
GO
/****** Object:  Table [dbo].[CustomerTable]    Script Date: 7/2/2025 6:33:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerTable](
	[CustomerID] [int] NOT NULL,
	[CustomerName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Age] [int] NULL,
	[Phone] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomerTable]  WITH CHECK ADD CHECK  (([Age]>=(0) AND [Age]<=(99)))
GO
