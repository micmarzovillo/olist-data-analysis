SELECT 
	o.customer_id,
	ROUND(AVG(oi.price + oi.freight_value),2) AS avg_value
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.customer_id
ORDER BY avg_value DESC;