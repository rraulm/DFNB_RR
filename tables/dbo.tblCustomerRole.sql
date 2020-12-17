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

/****** Object:  Table [dbo].[tblCustomerRole]    Script Date: 12/13/2020 7:55:27 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCustomerRole](
	[cust_role] [smallint] NOT NULL,
 CONSTRAINT [PK_tblCustomerRole] PRIMARY KEY CLUSTERED 
(
	[cust_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


