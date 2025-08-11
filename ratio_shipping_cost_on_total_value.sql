SELECT 
    ROUND(AVG(oi.freight_value / (oi.price + oi.freight_value)) *100, 2) AS ratio_shipping_cost_on_total_value
FROM order_items oi;