-- Average Delivery Time

SELECT
ROUND(
AVG(
julianday(order_delivered_customer_date)
-
julianday(order_purchase_timestamp)
),2
) AS avg_delivery_days
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;