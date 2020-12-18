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

-- Create dbo.tblTransactionTypeDim

--CREATE TABLE [dbo].[tblTransactionTypeDim](
--	[tran_type_id] [smallint] NOT NULL,
--	[tran_type_code] [varchar](5) NOT NULL,
--	[tran_type_desc] [varchar](100) NOT NULL,
--	[tran_fee_prct] [decimal](4, 3) NOT NULL,
--	[cur_cust_req_ind] [varchar](1) NOT NULL
--) ON [PRIMARY]

USE [DFNB2]
GO

/****** Object:  Table [dbo].[tblTransactionTypeDim]    Script Date: 12/18/2020 12:52:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblTransactionTypeDim](
	[tran_type_id] [smallint] NOT NULL,
	[tran_type_code] [varchar](5) NOT NULL,
	[tran_type_desc] [varchar](100) NOT NULL,
	[tran_fee_prct] [decimal](4, 3) NOT NULL,
	[cur_cust_req_ind] [varchar](1) NOT NULL,
 CONSTRAINT [PK_tblTransactionTypeDim] PRIMARY KEY CLUSTERED 
(
	[tran_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO