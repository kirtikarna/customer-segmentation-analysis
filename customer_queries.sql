SHOW TABLES;
DESCRIBE `sample - superstore`;
SELECT `Customer Name`, SUM(Sales) AS total_sales
FROM `sample - superstore`
GROUP BY `Customer Name`
ORDER BY total_sales DESC;
SELECT `Customer Name`, COUNT(`Order ID`) AS total_orders
FROM `sample - superstore`
GROUP BY `Customer Name`;
SELECT 
    `Customer Name`,
    SUM(Sales)/COUNT(`Order ID`) AS avg_order_value
FROM `sample - superstore`
GROUP BY `Customer Name`;
SELECT 
    `Customer Name`,
    SUM(Sales) AS total_sales,
    COUNT(`Order ID`) AS total_orders,
    SUM(Sales)/COUNT(`Order ID`) AS avg_order_value
FROM `sample - superstore`
GROUP BY `Customer Name`
ORDER BY total_sales DESC;
SELECT 
    `Customer Name`,
    SUM(Sales) AS total_sales,
    COUNT(`Order ID`) AS total_orders,
    SUM(Sales)/COUNT(`Order ID`) AS avg_order_value,
    
    CASE 
        WHEN SUM(Sales) > 5000 THEN 'High Value'
        WHEN SUM(Sales) > 2000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment

FROM `sample - superstore`
GROUP BY `Customer Name`
ORDER BY total_sales DESC;