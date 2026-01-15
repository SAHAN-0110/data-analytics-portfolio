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
-- Average order value
SELECT 
    ROUND(AVG(total_sales), 2) AS average_order_value
FROM retail_sales;
-- Top customers by total revenue
SELECT 
    customer_id,
    SUM(total_sales) AS total_revenue
FROM retail_sales
GROUP BY customer_id
ORDER BY total_revenue DESC;
