/*****************************************************************************************************************
NAME:    LoadDFNB_p3
PURPOSE: Load DFNB_p3
SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/19/2020   Raul Ribeiro  1. Creation of the Script

RUNTIME: 
Approx. 1 min
******************************************************************************************************************/


--13) Load tblBranchGoalsDim

TRUNCATE TABLE tblBranchGoalsDim;

INSERT INTO dbo.tblBranchGoalsDim
SELECT DISTINCT 
       sp.acct_branch_id AS branch_id
     , sp.acct_branch_desc AS branch_desc
     , sp.acct_id
     , sp.loan_amt
  FROM dbo.stg_p1 AS sp;