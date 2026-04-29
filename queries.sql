CREATE DATABASE retail_db;
USE retail_db;

CREATE TABLE retail_sales (
    order_id VARCHAR(20),
    order_date DATE,
    order_time TIME,
    city VARCHAR(50),
    product VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price FLOAT,
    payment_method VARCHAR(50),
    sales_channel VARCHAR(50)
);
SELECT COUNT(*) FROM retail_sales;
SELECT * FROM retail_sales LIMIT 10;


-- total revenue
SELECT SUM(quantity * price) AS total_revenue
FROM retail_sales;

-- top 5 best selling product
SELECT product, SUM(quantity) AS total_sold
FROM retail_sales
GROUP BY product
ORDER BY total_sold DESC
LIMIT 5;

-- city having highest business
SELECT city, SUM(quantity*price) AS total_sold
FROM retail_sales
GROUP BY city
ORDER BY total_sold DESC;