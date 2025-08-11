SELECT
	AVG(price + freight_value) AS avg_value,
	c.customer_state
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_state;
	