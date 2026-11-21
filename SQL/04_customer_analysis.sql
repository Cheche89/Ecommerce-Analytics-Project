--This is a comment!

/*
Product Analysis Findings

Top Revenue Categories:

1. cama_mesa_banho      = 1,712,553.67
2. beleza_saude         = 1,657,373.12
3. informatica_acessorios = 1,585,330.45

Insights:

- Home & living products generated the highest revenue.
- Health & beauty products represent a major revenue driver.
- Technology accessories are among the strongest-performing categories.
- Revenue is diversified across multiple product categories rather than relying on a single category.
*/



SELECT
    p.product_category_name,
    ROUND(SUM(pay.payment_value),2) AS revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
JOIN payments pay
    ON oi.order_id = pay.order_id
GROUP BY p.product_category_name
ORDER BY revenue DESC
LIMIT 10;