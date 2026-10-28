CREATE TABLE RetailSales
(
    TransactionID INT PRIMARY KEY,
    SaleDate DATE,
    CustomerID VARCHAR(10),
    CustomerName VARCHAR(50),
    Region VARCHAR(20),
    City VARCHAR(30),
    Category VARCHAR(30),
    ProductName VARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    Discount DECIMAL(10,2)
);

select * from RetailSales


USE
GO

INSERT INTO RetailSales
(TransactionID, SaleDate, CustomerID, CustomerName, Region, City,
 Category, ProductName, Quantity, UnitPrice, Discount)
VALUES
(1, '2025-01-05', 'C001', 'Amit Sharma', 'North', 'Delhi', 'Electronics', 'Wireless Mouse', 2, 650, 100),
(2, '2025-01-08', 'C002', 'Priya Verma', 'North', 'Lucknow', 'Clothing', 'T-Shirt', 3, 450, 50),
(3, '2025-01-12', 'C003', 'Rahul Singh', 'West', 'Mumbai', 'Home & Kitchen', 'Water Bottle', 2, 300, 30),
(4, '2025-01-18', 'C004', 'Neha Gupta', 'South', 'Bengaluru', 'Electronics', 'Keyboard', 1, 1200, 150),
(5, '2025-01-22', 'C005', 'Vikas Yadav', 'East', 'Patna', 'Clothing', 'Jeans', 2, 1100, 100),
(6, '2025-02-03', 'C001', 'Amit Sharma', 'North', 'Delhi', 'Home & Kitchen', 'Storage Box', 4, 250, 40),
(7, '2025-02-07', 'C006', 'Sana Khan', 'West', 'Pune', 'Beauty', 'Face Wash', 3, 220, 25),
(8, '2025-02-11', 'C007', 'Rohit Mishra', 'North', 'Kanpur', 'Electronics', 'USB Cable', 5, 180, 20),
(9, '2025-02-16', 'C008', 'Anjali Das', 'East', 'Kolkata', 'Home & Kitchen', 'Dinner Set', 1, 1500, 180),
(10, '2025-02-24', 'C002', 'Priya Verma', 'North', 'Lucknow', 'Beauty', 'Shampoo', 2, 350, 35),
(11, '2025-03-02', 'C009', 'Karan Patel', 'West', 'Ahmedabad', 'Clothing', 'Jacket', 1, 2200, 250),
(12, '2025-03-06', 'C010', 'Meera Joshi', 'South', 'Chennai', 'Electronics', 'Headphones', 2, 1800, 200),
(13, '2025-03-11', 'C003', 'Rahul Singh', 'West', 'Mumbai', 'Beauty', 'Sunscreen', 2, 500, 60),
(14, '2025-03-17', 'C011', 'Deepak Kumar', 'East', 'Ranchi', 'Home & Kitchen', 'Cookware Set', 1, 2500, 300),
(15, '2025-03-25', 'C005', 'Vikas Yadav', 'East', 'Patna', 'Electronics', 'Power Bank', 2, 950, 100),
(16, '2025-04-04', 'C012', 'Pooja Singh', 'North', 'Jaipur', 'Clothing', 'Kurti', 3, 700, 80),
(17, '2025-04-09', 'C006', 'Sana Khan', 'West', 'Pune', 'Home & Kitchen', 'Mug Set', 2, 400, 40),
(18, '2025-04-14', 'C013', 'Arjun Rao', 'South', 'Hyderabad', 'Electronics', 'Smart Watch', 1, 3200, 350),
(19, '2025-04-20', 'C007', 'Rohit Mishra', 'North', 'Kanpur', 'Clothing', 'Formal Shirt', 2, 850, 90),
(20, '2025-04-28', 'C014', 'Isha Roy', 'East', 'Kolkata', 'Beauty', 'Moisturizer', 3, 600, 70),
(21, '2025-05-03', 'C008', 'Anjali Das', 'East', 'Kolkata', 'Electronics', 'Bluetooth Speaker', 1, 2100, 220),
(22, '2025-05-08', 'C009', 'Karan Patel', 'West', 'Ahmedabad', 'Home & Kitchen', 'Bedsheet', 2, 750, 75),
(23, '2025-05-13', 'C010', 'Meera Joshi', 'South', 'Chennai', 'Clothing', 'Sneakers', 1, 2600, 280),
(24, '2025-05-19', 'C015', 'Nitin Sahu', 'North', 'Lucknow', 'Beauty', 'Body Lotion', 2, 400, 45),
(25, '2025-05-26', 'C011', 'Deepak Kumar', 'East', 'Ranchi', 'Electronics', 'Monitor', 1, 8500, 900),
(26, '2025-06-02', 'C012', 'Pooja Singh', 'North', 'Jaipur', 'Home & Kitchen', 'Pressure Cooker', 1, 1800, 180),
(27, '2025-06-07', 'C013', 'Arjun Rao', 'South', 'Hyderabad', 'Clothing', 'Track Pants', 2, 650, 60),
(28, '2025-06-12', 'C014', 'Isha Roy', 'East', 'Kolkata', 'Electronics', 'Laptop Stand', 1, 1400, 120),
(29, '2025-06-18', 'C015', 'Nitin Sahu', 'North', 'Lucknow', 'Home & Kitchen', 'Floor Mat', 3, 350, 35),
(30, '2025-06-25', 'C004', 'Neha Gupta', 'South', 'Bengaluru', 'Beauty', 'Hair Dryer', 1, 1700, 170);


select * from RetailSales;


-- =====================================================
-- PROJECT: Retail Sales Analysis
-- DATABASE: PostgreSQL
-- TABLE: retailsales
-- =====================================================


-- Q1. How many transactions are in the dataset?

SELECT COUNT(*) AS total_transactions
FROM retailsales;

-- Q2. How many unique customers are there?

SELECT COUNT(DISTINCT customerid) AS unique_customers
FROM retailsales;

-- Q3. How many different products are sold?

SELECT COUNT(DISTINCT productname) AS total_products
FROM retailsales;


-- Q4. What are the different product categories?

SELECT DISTINCT category
FROM retailsales
ORDER BY category;


-- Q5. What is the date range of sales?

SELECT
    MIN(saledate) AS first_sale_date,
    MAX(saledate) AS last_sale_date
FROM retailsales;


-- Q6. What is the total quantity of products sold?

SELECT SUM(quantity) AS total_quantity_sold
FROM retailsales;

-- Q7. What is the total sales revenue?

SELECT
    SUM(quantity * unitprice) AS total_sales_revenue
FROM retailsales;

-- Q8. What is the total discount given?

SELECT SUM(discount) AS total_discount
FROM retailsales;


-- Q9. What are the total sales by product category?

SELECT
    category,
    SUM(quantity * unitprice) AS total_sales
FROM retailsales
GROUP BY category
ORDER BY total_sales DESC;


-- Q10. What are the top 5 best-selling products by quantity?

SELECT
    productname,
    SUM(quantity) AS total_quantity_sold
FROM retailsales
GROUP BY productname
ORDER BY total_quantity_sold DESC
LIMIT 5;


-- Q11. Who are the top 5 customers by purchase amount?

SELECT
    customerid,
    customername,
    SUM(quantity * unitprice) AS total_purchase
FROM retailsales
GROUP BY customerid, customername
ORDER BY total_purchase DESC
LIMIT 5;


-- Q12. What are the total sales by region?

SELECT
    region,
    SUM(quantity * unitprice) AS total_sales
FROM retailsales
GROUP BY region
ORDER BY total_sales DESC;


-- Q13. Which city has the highest sales?

SELECT
    city,
    SUM(quantity * unitprice) AS total_sales
FROM retailsales
GROUP BY city
ORDER BY total_sales DESC
LIMIT 1;


-- Q14. What is the monthly sales trend?

SELECT
    DATE_TRUNC('month', saledate)::DATE AS sales_month,
    SUM(quantity * unitprice) AS total_sales
FROM retailsales
GROUP BY DATE_TRUNC('month', saledate)
ORDER BY sales_month;


-- Q15. Which product category generates the highest revenue?

SELECT
    category,
    SUM(quantity * unitprice) AS total_revenue
FROM retailsales
GROUP BY category
ORDER BY total_revenue DESC
LIMIT 1;























	