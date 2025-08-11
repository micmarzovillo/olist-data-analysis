CREATE VIEW avg_item_per_customers AS
SELECT o.customer_id, COUNT(oi.order_item_id) AS item_count
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY o.customer_id
ORDER BY item_count desc;

SELECT AVG(item_count) AS avg_item_per_customers
FROM avg_item_per_customers;


