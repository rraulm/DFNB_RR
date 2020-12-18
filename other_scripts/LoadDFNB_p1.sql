/*****************************************************************************************************************
NAME:    LoadDFNB_p1
PURPOSE: Load DFNB_p1
SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/01/2020   Raul Ribeiro  1. Creation of the Script
1.1     12/09/2020   Raul Ribeiro  1. Creation of loads 
2.0		12/17/2020	 Raul Ribeiro  1. Improvements Version 2
RUNTIME: 
Approx. 1 min
NOTES:
Loading DFNB_STG_P1 - Project 1 database. Meaning creating all the tables inside the database.
******************************************************************************************************************/

-- 1) Load dbo.Accounts.sql

TRUNCATE TABLE dbo.Accounts;

INSERT INTO dbo.Accounts
(
    acct_id,
    cust_id,
    open_date,
    open_close_code,
    close_date,
    loan_amt,
    pri_cust_id,
    prod_id,
    branch_id
)
VALUES
(
    0, -- acct_id - int
    0, -- cust_id - smallint
    NULL, -- open_date - date
    '', -- open_close_code - varchar
    NULL, -- close_date - date
    0, -- loan_amt - decimal
    0, -- pri_cust_id - smallint
    0, -- prod_id - smallint
    0 -- branch_id - smallint
)

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
FROM dbo.stg_p1 as s

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

TRUNCATE TABLE dbo.tblaccounts;

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