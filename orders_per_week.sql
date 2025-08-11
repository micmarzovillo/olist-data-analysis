SELECT 
    EXTRACT(WEEK FROM o.order_purchase_timestamp) AS week,
    COUNT(o.order_id) AS total_orders,
    SUM(oi.price + oi.freight_value) AS total_value
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY week
ORDER BY week;