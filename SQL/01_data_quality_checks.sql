--This is a comment
/*
Data Quality Findings

- No duplicate order IDs found.
- No missing customer IDs found.
- No missing order IDs found.
- No missing product IDs found.
- No missing seller IDs found.

Conclusion:
Core business entities are complete and suitable for analysis.
*/


-- Total Customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- Total Orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Total Products
SELECT COUNT(*) AS total_products
FROM products;

-- Total Sellers
SELECT COUNT(*) AS total_sellers
FROM sellers;

-- DATA QUALITY CHECKS

-- Total Customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- Total Orders
SELECT COUNT(*) AS total_orders
FROM orders;

-- Total Products
SELECT COUNT(*) AS total_products
FROM products;

-- Total Sellers
SELECT COUNT(*) AS total_sellers
FROM sellers;

-- Duplicate Order IDs
SELECT
    order_id,
    COUNT(*) AS duplicate_count
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;

-- Missing Customer IDs
SELECT COUNT(*) AS missing_customer_ids
FROM customers
WHERE customer_id IS NULL;

-- Missing Order IDs
SELECT COUNT(*) AS missing_order_ids
FROM orders
WHERE order_id IS NULL;

-- Missing Product IDs
SELECT COUNT(*) AS missing_product_ids
FROM products
WHERE product_id IS NULL;

-- Missing Seller IDs
SELECT COUNT(*) AS missing_seller_ids
FROM sellers
WHERE seller_id IS NULL;
