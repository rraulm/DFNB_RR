/*****************************************************************************************************************
NAME:    dbo.tblBranchGoalsDim
PURPOSE: Create dbo.tblBranchGoalsDim
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

--Create dbo.tblBranchGoalsDim

--DROP TABLE [dbo].[tblBranchGoalsDim]
--CREATE TABLE dbo.tblBranchGoalsDim(
----	[goal_id] [smallint] NOT NULL,
--	[branch_id] [int] NOT NULL,
--[branch_desc] [varchar] (100) NOT NULL,
----year_goal [int] NOT	NULL,
--[acct_id] [int] NOT NULL,
--[loan_amt] [decimal] (20,4) NOT	NULL,
--) ON [PRIMARY]

--ALTER TABLE dbo.tblBranchGoalsDim
--ADD goal_id   SMALLINT 
--  , year_goal INT;

USE [DFNB2]
GO

/****** Object:  Table [dbo].[tblBranchGoalsDim]    Script Date: 12/18/2020 14:42:59 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblBranchGoalsDim]') AND type in (N'U'))
DROP TABLE [dbo].[tblBranchGoalsDim]
GO

/****** Object:  Table [dbo].[tblBranchGoalsDim]    Script Date: 12/18/2020 14:42:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblBranchGoalsDim](
	[branch_id] [int] NOT NULL,
	[branch_desc] [varchar](100) NOT NULL,
	[acct_id] [int] NOT NULL,
	[loan_amt] [decimal](20, 4) NOT NULL
) ON [PRIMARY]
GO