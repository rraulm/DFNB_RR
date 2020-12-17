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

/****** Object:  Table [dbo].[tblAddress]    Script Date: 12/13/2020 7:54:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblAddress](
	[cust_add_id] [int] NOT NULL,
	[cust_add_lat] [decimal](16, 12) NOT NULL,
	[cust_add_lon] [decimal](16, 12) NOT NULL,
	[cust_add_type] [varchar](1) NOT NULL,
 CONSTRAINT [PK_tblAddressDim] PRIMARY KEY CLUSTERED 
(
	[cust_add_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


