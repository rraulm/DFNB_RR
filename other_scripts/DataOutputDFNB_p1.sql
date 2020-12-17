/*****************************************************************************************************************
NAME:    DataOutputDFNB_p1
PURPOSE: Create the output for all views created on project 01
SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/11/2020   RAUL Ribeiro  1. Creation of the Script for output
 
RUNTIME: 
Approx. 1 min
NOTES:
Creating of the script to run all views at once.
******************************************************************************************************************/



SELECT *
  FROM dbo.v_AccountsOpen;

SELECT *
  FROM dbo.v_AverageBalanceperYear;

SELECT *
  FROM dbo.v_Accounts;

SELECT *
  FROM dbo.v_LoansperBranch;

SELECT *
  FROM dbo.v_TotalAccounts;