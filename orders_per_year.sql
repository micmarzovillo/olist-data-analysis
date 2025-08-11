SELECT
	COUNT(o.order_id) AS total_orders,
	EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
	sum(oi.price + oi.freight_value) AS total_value
FROM order_items oi
JOIN orders o ON o.order_id = oi.order_id
GROUP BY year
ORDER BY year;