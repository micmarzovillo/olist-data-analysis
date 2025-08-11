SELECT 
    EXTRACT(MONTH FROM o.order_purchase_timestamp) AS month,
    ROUND(AVG(oi.freight_value), 2) AS avg_freight_value
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY month
ORDER BY avg_freight_value desc;