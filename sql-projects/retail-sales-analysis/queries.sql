-- Total revenue generated from all sales
SELECT 
    SUM(total_sales) AS total_revenue
FROM retail_sales;
-- Revenue by product category
SELECT 
    category,
    SUM(total_sales) AS category_revenue
FROM retail_sales
GROUP BY category
ORDER BY category_revenue DESC;
