SELECT 
    o.customer_id,
    COUNT(o.order_id) AS total_order,
    CASE 
        WHEN ROUND(SUM(oi.price + oi.freight_value), 2) > 500 THEN 'High Spender'
        ELSE 'Low/Medium Spender'
    END AS type_of_customer
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.customer_id
ORDER BY total_order DESC;