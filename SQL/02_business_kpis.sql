--This is comment

/*
Business KPI Findings

Total Revenue: 16,008,872.12
Average Order Value: 154.10

Initial Insight:
The platform generated over 16 million in revenue with an average transaction value of 154.10 per payment.
*/


-- Total Revenue
SELECT
ROUND(SUM(payment_value), 2) AS total_revenue
FROM payments;

-- Average Order Value
SELECT
ROUND(AVG(payment_value), 2) AS average_order_value
FROM payments;

-- Total Orders
SELECT
COUNT(DISTINCT order_id) AS total_orders
FROM orders;

-- Total Customers
SELECT
COUNT(DISTINCT customer_id) AS total_customers
FROM customers;

SELECT
ROUND(SUM(payment_value), 2) AS total_revenue
FROM payments;

-- Average Order Value
SELECT
ROUND(AVG(payment_value), 2) AS average_order_value
FROM payments;

-- Total Orders
SELECT
COUNT(DISTINCT order_id) AS total_orders
FROM orders;

-- Total Customers
SELECT
COUNT(DISTINCT customer_id) AS total_customers
FROM customers;

-- Revenue Per Customer
SELECT
ROUND(
SUM(payment_value) /
COUNT(DISTINCT customer_id),
2
) AS revenue_per_customer
FROM payments p
JOIN orders o
ON p.order_id = o.order_id;



