/*****************************************************************************************************************
NAME:    dbo.tblTransactionTypeDim
PURPOSE: Create dbo.tblTransactionTypeDim
SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/18/2020   Raul Ribeiro  1. Creation of the table
RUNTIME: 
Approx. 1 min
******************************************************************************************************************/

-- Create dbo.tblCustomerDim.sql
/*
SELECT DISTINCT
      s.cust_id
    , s.first_name
     , s.last_name
     , s.gender
	   , s.birth_date
     , s.cust_since_date
     , s.cust_add_id
   , s.pri_branch_id
	   , s.cust_rel_id
  INTO dbo.tblCustomerDim
  FROM dbo.stg_p1 as s
  */

  USE [DFNB2]
GO

/****** Object:  Table [dbo].[tblCustomerDim]    Script Date: 12/18/2020 12:52:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCustomerDim]') AND type in (N'U'))
DROP TABLE [dbo].[tblCustomerDim]
GO

/****** Object:  Table [dbo].[tblCustomerDim]    Script Date: 12/18/2020 12:52:40 ******/
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblCustomerDim](
	[cust_id] [smallint] NOT NULL,
	[first_name] [varchar](100) NOT NULL,
	[last_name] [varchar](100) NOT NULL,
	[gender] [varchar](1) NOT NULL,
	[birth_date] [date] NOT NULL,
	[cust_since_date] [date] NOT NULL,
	[cust_add_id] [int] NOT NULL,
	[pri_branch_id] [smallint] NOT NULL,
	[cust_rel_id] [smallint] NOT NULL,
 CONSTRAINT [PK_tblCustomerDim] PRIMARY KEY CLUSTERED 
(
	[cust_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
