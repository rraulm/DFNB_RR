/*****************************************************************************************************************
NAME:    dbo.v_CustomerFee
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





Create View [dbo].[v_CustomerFee] AS
SELECT distinct 
tb.branch_desc AS 'Branch_Name'
,ty.tran_type_desc
,count(tf.tran_date) AS 'Total_Transactions'
,sum(ty.tran_fee_prct) AS Total_fee_prices
,sum(tf.tran_fee_amt) AS Total_Fee_Amounts

FROM dbo.tblTransactionFact tf
INNER JOIN dbo.tblBranch tb ON tb.branch_id = tf.branch_id
INNER JOIN dbo.tblTransactionTypeDim ty ON tf.tran_type_id = ty.tran_type_id

GROUP BY
tb.branch_desc
,ty.tran_type_desc
GO