USE [JKLG]
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 7/2/2025 6:33:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[EMPNO] [varchar](10) NULL,
	[EMP_NAME] [varchar](20) NULL,
	[DEPT] [varchar](20) NULL,
	[SALARY] [varchar](20) NULL,
	[DOJ] [date] NULL,
	[BRANCH] [varchar](20) NULL
) ON [PRIMARY]
GO
