SELECT
	c.customer_state,
	ROUND(AVG(oi.freight_value),2) AS avg_shipping_cost
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY avg_shipping_cost DESC;