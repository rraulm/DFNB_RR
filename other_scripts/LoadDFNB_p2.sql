/*****************************************************************************************************************
NAME:    LoadDFNB_p2
PURPOSE: Load DFNB_p2
SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/18/2020   Raul Ribeiro  1. Creation of the Script
2.0	    12/18/2020   Raul Ribeiro  2. Improvements on the Script
RUNTIME: 
Approx. 1 min
NOTES:
Loading DFNB_STG_P2 - Project 2 database, that includes all tables of project 1, and the 2 new tables of project 2.
******************************************************************************************************************/

-- 1) Load dbo.tblCustomerDim.sql

TRUNCATE TABLE dbo.tblCustomerDim;

INSERT INTO dbo.tblCustomerDim
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
  FROM dbo.stg_p1 AS s;

-- 2) Load dbo.tblProductDim.sql

TRUNCATE TABLE dbo.tblProductDim;

INSERT INTO dbo.tblProductDim
SELECT DISTINCT 
       s.prod_id	 
  FROM dbo.stg_p1 AS s;

-- 3) Load dbo.tblArea.sql

TRUNCATE TABLE dbo.tblArea;

INSERT INTO dbo.tblArea
SELECT DISTINCT 
       s.acct_area_id AS area_id
  FROM dbo.stg_p1 AS s;

-- 4) Load dbo.tblRegion.sql

TRUNCATE TABLE dbo.tblRegion;

INSERT INTO dbo.tblRegion
SELECT DISTINCT 
       s.acct_region_id AS region_id
  FROM dbo.stg_p1 AS s;

-- 5) Load dbo.tblAddress.sql

TRUNCATE TABLE dbo.tblAddress;

INSERT INTO dbo.tblAddress
SELECT DISTINCT 
       s.cust_add_id
     , s.cust_add_lat
     , s.cust_add_lon
     , s.cust_add_type
  FROM dbo.stg_p1 AS s;

-- 6) Load dbo.tblBranch.sql

TRUNCATE TABLE dbo.tblBranch;

INSERT INTO dbo.tblBranch
SELECT DISTINCT 
       s.acct_branch_id AS branch_id
     , s.acct_branch_code AS branch_code
     , s.acct_branch_desc AS branch_desc
     , s.acct_branch_add_id AS add_id
     , s.acct_area_id AS area_id
     , s.acct_region_id AS region_id
  FROM dbo.stg_p1 AS s;

-- 7) Load dbo.tblCustomerRole.sql

TRUNCATE TABLE dbo.tblCustomerRole;

INSERT INTO dbo.tblCustomerRole
SELECT DISTINCT 
       s.acct_cust_role_id AS cust_role
  FROM dbo.stg_p1 AS s;

-- 8) Load dbo.tblAccounts.sql

TRUNCATE TABLE dbo.tblAccounts;

INSERT INTO dbo.Accounts
SELECT DISTINCT 
       s.acct_id
	 , s.cust_id
	 , s.open_date
	 , s.open_close_code
	 , s.close_date
	 , s.loan_amt
	 , s.pri_cust_id
	 , s.prod_id
	 , s.branch_id
  FROM dbo.stg_p1 AS s;

-- 9) Load dbo.tblAccountCustomer.sql

TRUNCATE TABLE dbo.tblAccountCustomer;

INSERT INTO dbo.tblAccountCustomer
SELECT DISTINCT 
       s.acct_id
	 , s.cust_id
	 , s.acct_cust_role_id AS cust_role_id
  FROM dbo.stg_p1 AS s;

-- 10) Load dbo.tblAccountFact.sql

TRUNCATE TABLE dbo.tblAccountFact;

INSERT INTO dbo.tblAccountFact
SELECT DISTINCT 
       s.as_of_date
	 , s.cur_bal
	 , s.acct_id
  FROM dbo.stg_p1 AS s;
-- 11) Load tblTransactionTypeDim

TRUNCATE TABLE dbo.tblTransactionTypeDim;

INSERT INTO dbo.tblTransactionTypeDim
SELECT DISTINCT 
       sp.tran_type_id
     , sp.tran_type_code
     , sp.tran_type_desc
     , sp.tran_fee_prct
     , sp.cur_cust_req_ind
  FROM dbo.stg_p2 AS sp;

-- 12) Load tblTransactionTypeDim

TRUNCATE TABLE dbo.tblTransactionFact;

INSERT INTO dbo.tblTransactionFact
SELECT DISTINCT          
       sp.tran_date
     , sp.tran_time
     , sp.tran_type_id
     , sp.tran_amt
     , sp.tran_fee_amt
	 , sp.branch_id
	 , sp.acct_id
  FROM dbo.stg_p2 sp;