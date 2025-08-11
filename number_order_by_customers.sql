SELECT 
	COUNT(order_id) AS total_order, 
	customer_id
FROM orders
GROUP BY customer_id
ORDER BY total_order DESC;