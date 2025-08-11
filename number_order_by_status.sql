SELECT COUNT(*) AS total_orders, order_status
FROM orders
GROUP BY order_status;