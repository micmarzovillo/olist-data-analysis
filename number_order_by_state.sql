SELECT COUNT(*) AS total_orders, customer_state
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY customer_state;