USE [DFNB2]
GO

/****** Object:  View [dbo].[v_TopCustomers]    Script Date: 12/18/2020 2:22:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*****************************************************************************************************************
NAME:    dbo.v_TopCustomers
PURPOSE: Create a view
SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/18/2020   Raul Ribeiro  1. Creation of the View
RUNTIME: 
Approx. 1 min
******************************************************************************************************************/


Create View [dbo].[v_TopCustomers] AS
SELECT TOP 10 tc.first_name +' '+tc.last_name AS Customer,
count(tt.tran_date) AS Total_Transactions
FROM dbo.tblTransactionFact tt
JOIN dbo.Accounts ta ON tt.acct_id = ta.acct_id
JOIN dbo.tblCustomerDim tc ON ta.pri_cust_id= tc.cust_id
JOIN dbo.tblBranch tb ON ta.branch_id = tb.branch_id
GROUP BY 
tc.first_name, tc.last_name
ORDER BY count(tt.tran_date) desc;
GO


