/*****************************************************************************************************************
NAME:    DataOutputDFNB_p2
PURPOSE: Create the output for all views created on project 01
SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/18/2020   Raul Ribeiro  1. Creation of the Script for output
 
RUNTIME: 
Approx. 1 min
NOTES:
Creating of the script to run all views at once.
******************************************************************************************************************/

SELECT *
  FROM dbo.v_BranchesTransactions;

SELECT *
  FROM dbo.v_CustomersFeeAmounts;

SELECT *
  FROM dbo.v_TransactionFee;

SELECT *
  FROM dbo.v_OtherBranches;

SELECT *
  FROM dbo.v_TopCustomers;

SELECT *
  FROM dbo.v_TotalAccounts;