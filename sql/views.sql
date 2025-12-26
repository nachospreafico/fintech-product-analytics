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

-- Purpose: Aggregate transactions to user–month grain
-- Used for: Active Users, Transactions, Fee Revenue
CREATE VIEW vw_subscription_revenue AS
SELECT
	s.user_id,
	DATETRUNC(MONTH, s.month) AS subscription_month,
	p.plan_name,
	p.monthly_fee_eur AS subscription_fee_eur
FROM subscriptions s
JOIN dim_plans p
ON s.plan_id = p.plan_id