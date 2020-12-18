USE [DFNB2]
GO

/****** Object:  View [dbo].[v_BranchesTransactions]    Script Date: 12/18/2020 2:25:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/*****************************************************************************************************************
NAME:    dbo.v_BranchesTransactions
PURPOSE: Create a view
SUPPORT: Jaussi Consulting LLC
		 www.jaussiconsulting.net
		 jon@jaussiconsulting.net
MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     12/118/2020   Raul Ribeiro  1. Creation of the View
RUNTIME: 
Approx. 1 min
******************************************************************************************************************/


CREATE VIEW	[dbo].[v_BranchesTransactions] AS

SELECT distinct 
tf.branch_id
,tb.branch_desc AS 'Branch_Name'
,count(tf.tran_date) AS 'Total_Transactions'
FROM dbo.tblTransactionFact tf
INNER JOIN dbo.tblBranch tb ON tb.branch_id = tf.branch_id
GROUP BY
tf.branch_id
,tb.branch_desc;
GO


