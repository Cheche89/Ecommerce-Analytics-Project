-- This is a comment!

/*
Sales Trend Findings

- Revenue grew consistently through 2017.
- Sales exceeded 1 million during several months of 2018.
- Peak revenue occurred in April 2018.
- September and October 2018 appear incomplete and were excluded from trend conclusions.
*/


-- Monthly Revenue Trend

SELECT
    strftime('%Y-%m', o.order_purchase_timestamp) AS month,
    ROUND(SUM(p.payment_value), 2) AS revenue
FROM orders o
JOIN payments p
    ON o.order_id = p.order_id
GROUP BY month
ORDER BY month;