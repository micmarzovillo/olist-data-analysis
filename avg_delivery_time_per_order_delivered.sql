SELECT AVG(order_delivered_customer_date - order_purchase_timestamp) AS avg_delivery
FROM orders
WHERE order_status = 'delivered';