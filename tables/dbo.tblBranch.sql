/*****************************************************************************************************************
NAME:    LoadDFNB_p2
PURPOSE: Load DFNB_p2
SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/01/2020   Raul Ribeiro  1. Creation of the Script
RUNTIME: 
Approx. 1 min

******************************************************************************************************************/


USE [DFNB2]
GO

/****** Object:  Table [dbo].[tblBranch]    Script Date: 12/13/2020 7:55:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblBranch](
	[branch_id] [smallint] NOT NULL,
	[branch_code] [varchar](5) NOT NULL,
	[branch_desc] [varchar](100) NOT NULL,
	[add_id] [int] NOT NULL,
	[area_id] [int] NOT NULL,
	[region_id] [int] NOT NULL,
 CONSTRAINT [PK_tblBranch] PRIMARY KEY CLUSTERED 
(
	[branch_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


