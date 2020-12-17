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

/****** Object:  View [dbo].[v_LoansperBranch]    Script Date: 12/01/2020 8:12:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW	[dbo].[v_LoansperBranch] AS

SELECT 
    sum( tad.loan_amt) AS TotalLoan
	 ,tad.branch_id AS Branch
	 , year(tafd.as_of_date) AS year

  FROM dbo.Accounts AS tad
       JOIN
       dbo.tblAccountFact AS tafd
	   ON tad.acct_id = tafd.acct_id

	   GROUP BY	tad.branch_id, year(tafd.as_of_date)	  

	  
	 


GO


