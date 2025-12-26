-- Purpose: Aggregate transactions to user–month grain
-- Used for: Active Users, Transactions, Fee Revenue
CREATE VIEW vw_transaction_analytics AS
SELECT
	user_id,
	DATETRUNC(MONTH, transaction_date) AS transaction_date,
	COUNT(*) AS transactions_count,
	SUM(amount_eur) AS total_transactions_amount,
	SUM(fee_amount_eur) AS total_fee_revenue
FROM transactions
GROUP BY user_id, DATETRUNC(MONTH, transaction_date);
