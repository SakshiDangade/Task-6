Use sales_analysis

show tables

SELECT 
    YEAR(`Date`) AS year,
    MONTH(`Date`) AS month,
    SUM(`Total Revenue`) AS total_revenue
FROM `online_sales`
GROUP BY year, month
ORDER BY year, month;

SELECT 
    `Product Category`,
    SUM(`Total Revenue`) AS revenue
FROM `online_sales`
GROUP BY `Product Category`
ORDER BY revenue DESC
LIMIT 5;

SELECT 
    `Product Name`,
    SUM(`Units Sold`) AS total_units
FROM `online_sales`
GROUP BY `Product Name`
ORDER BY total_units DESC
LIMIT 10;

SELECT 
    `Region`,
    SUM(`Total Revenue`) AS revenue
FROM `online_sales`
GROUP BY `Region`
ORDER BY revenue DESC;

SELECT 
    `Payment Method`,
    COUNT(*) AS total_transactions,
    SUM(`Total Revenue`) AS total_revenue
FROM `online_sales`
GROUP BY `Payment Method`
ORDER BY total_revenue DESC;

SELECT 
    `Date`,
    SUM(`Total Revenue`) AS daily_sales
FROM `online_sales`
GROUP BY `Date`
ORDER BY `Date`;

SELECT 
    `Product Category`,
    AVG(`Total Revenue`) AS avg_order_value
FROM `online_sales`
GROUP BY `Product Category`
ORDER BY avg_order_value DESC;

SELECT 
    YEAR(`Date`) AS year,
    MONTH(`Date`) AS month,
    SUM(`Total Revenue`) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM `online_sales`
GROUP BY year, month
ORDER BY year, month;



