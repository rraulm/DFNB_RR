**************************************************************************************************************
NAME:    dbo.v_AccountsOpen
PURPOSE: Create a view
SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/01/2020   Raul Ribeiro  1. Creation of the View
RUNTIME: 
Approx. 1 min
******************************************************************************************************************/


USE [DFNB2]
GO

/****** Object:  View [dbo].[v_TotalAccounts]    Script Date: 12/01/2020 8:13:14 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW	[dbo].[v_TotalAccounts] AS

SELECT COUNT([open_close_code]) TotalAccounts
      ,[branch_id]
  FROM [DFNB2].[dbo].[Accounts] AS A

  GROUP BY A.branch_id
 
GO


