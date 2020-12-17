/*****************************************************************************************************************
NAME:    LoadDFNB_p1
PURPOSE: Load DFNB_p1
SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/01/2020  Raul Ribeiro  1. Creation of the Script
1.1     12/09/2020   Raul Ribeiro  1. Creation of loads 
2.0		12/17/2020	 Raul Ribeiro  1. Improvements Version 2
RUNTIME: 
Approx. 1 min


@@ -24,18 +25,17 @@ Loading DFNB_STG_P1 - Project 1 database. Meaning creating all the tables inside
TRUNCATE TABLE dbo.tblCustomerDim;

INSERT INTO dbo.tblCustomerDim

SELECT DISTINCT
SELECT DISTINCT 
       s.cust_id
     , s.first_name
     , s.last_name
     , s.gender
	 , s.birth_date
     , s.birth_date
     , s.cust_since_date
     , s.cust_add_id
	 , s.pri_branch_id
	 , s.cust_rel_id
FROM dbo.stg_p1 as s
     , s.pri_branch_id
     , s.cust_rel_id
  FROM dbo.stg_p1 AS s;

-- 2) Load dbo.tblProductDim.sql

@@ -127,11 +127,11 @@ SELECT DISTINCT
	 , s.acct_cust_role_id AS cust_role_id
  FROM dbo.stg_p1 AS s;

-- 10) Load dbo.tblAccountFactDim.sql
-- 10) Load dbo.tblAccountFact.sql

TRUNCATE TABLE dbo.tblAccountFactDim;
TRUNCATE TABLE dbo.tblAccountFact;

INSERT INTO dbo.tblAccountFactDim
INSERT INTO dbo.tblAccountFact
SELECT DISTINCT 
       s.as_of_date
	 , s.cur_bal
	 , s.acct_id
  FROM dbo.stg_p1 AS s;
  '*/