SELECT
	COUNT(o.order_id) AS total_order,
	DATE_TRUNC('year', order_purchase_timestamp)::date AS year,
	DATE_TRUNC('month', order_purchase_timestamp)::date AS month,
	SUM(oi.price + oi.freight_value) AS total_value
FROM order_items oi
JOIN orders o ON o.order_id = oi.order_id
GROUP BY year, month
ORDER BY year,month;