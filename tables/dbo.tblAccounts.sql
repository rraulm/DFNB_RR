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

/****** Object:  Table [dbo].[Accounts]    Script Date: 12/13/2020 7:47:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Accounts](
	[acct_id] [int] NOT NULL,
	[cust_id] [smallint] NOT NULL,
	[open_date] [date] NOT NULL,
	[open_close_code] [varchar](1) NOT NULL,
	[close_date] [date] NOT NULL,
	[loan_amt] [decimal](20, 4) NOT NULL,
	[pri_cust_id] [smallint] NOT NULL,
	[prod_id] [smallint] NOT NULL,
	[branch_id] [smallint] NOT NULL
) ON [PRIMARY]
GO


