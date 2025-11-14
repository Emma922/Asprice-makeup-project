--====================
--Exploratory Analysis
--====================

--Explore all objects in the Database
SELECT * FROM INFORMATION_SCHEMA.TABLES

--Explore all columns in the tables
SELECT * FROM INFORMATION_SCHEMA.COLUMNS



-- =======================================================
-- 📊 DIMENSION EXPLORATION
-- Purpose: Identify distinct categorical values in key dimensions
-- =======================================================

-- Customer dimensions
SELECT DISTINCT city      FROM customers ORDER BY city;
SELECT DISTINCT region    FROM customers ORDER BY region;

-- Product dimensions
SELECT DISTINCT category  FROM products ORDER BY category;
SELECT DISTINCT brand     FROM products ORDER BY brand;


--Date Exploration

--Find the earliest and the latest order
--How many months of orders are available
SELECT MAX(order_date) AS EarliestOrder,
MIN(order_date) AS LatestOrder,
DATEDIFF(MONTH,MIN(order_date),MAX(order_date)) AS Date_Diff_Months
FROM Orders


--Measures Exploration

--Total Sales
SELECT 
SUM((quantity * price)) AS TotalSales
FROM Orders o
LEFT JOIN Products p
ON o.product_id = p.product_id

--Quantity of orders
SELECT 
COUNT (DISTINCT(order_number)) AS [Quantity of Orders]
FROM Orders

--Average price per products
SELECT
ROUND(AVG(Price),0) AS AvgPrice
FROM Products

--Average order value (AOV)

--With CTE
 WITH CTE_AOV AS
(SELECT 
order_number,
SUM((price * quantity))  AS Revenue
FROM Orders o
LEFT JOIN Products p
ON o.product_id = p.product_id
GROUP BY order_number)
SELECT 
 ROUND(AVG(Revenue),1) AS AvgOrderValue
 FROM CTE_AOV 

--Single aggregation
 SELECT
ROUND((SUM(o.quantity * p.price)/(COUNT(DISTINCT(o.order_number)))),1) AS AOV
FROM Orders o
LEFT JOIN Products p
ON o.product_id = p.product_id


--Total Number of products

SELECT COUNT (*) AS NumberofProducts
FROM Products

--Number of Customers

SELECT COUNT(*) AS TotalNumberofCustomers
FROM Customers

--Average quantity of products per order
SELECT 
AVG(TotalQuantity) AS AvgProductsPerOrder
FROM(
SELECT
order_number,
SUM(quantity) AS TotalQuantity
FROM Orders
GROUP BY order_number)t

--Avg revenue per customer

SELECT ROUND(AVG(Revenue),1) AS AverageRevenuepercustomers
FROM
(SELECT SUM(price * quantity) AS Revenue,
c.customer_id
FROM Orders o
LEFT JOIN Customers c
ON o.customer_id = c.customer_id
LEFT JOIN Products p
ON o.product_id = p.product_id
GROUP BY c.customer_id)t

--Generate a report

SELECT 'Total Sales' AS Measure_name, SUM((quantity * price)) AS TotalSales
FROM Orders o
LEFT JOIN Products p
ON o.product_id = p.product_id
UNION ALL
SELECT 'Quantity of orders',
COUNT (DISTINCT(order_number)) AS [Quantity of Orders]
FROM Orders
UNION ALL
SELECT 'Avg Price product',
ROUND(AVG(Price),0) AS AvgPrice
FROM Products
UNION ALL
 SELECT 'AOV',
ROUND((SUM(o.quantity * p.price)/(COUNT(DISTINCT(o.order_number)))),1) AS AOV
FROM Orders o
LEFT JOIN Products p
ON o.product_id = p.product_id
UNION ALL
SELECT 'Nr. Of Products', COUNT (*) AS NumberofProducts
FROM Products
UNION ALL 
SELECT 'Nr. Of Customers',COUNT(*) AS TotalNumberofCustomers
FROM Customers
UNION ALL
SELECT 'Avg Prod. per Ord',
AVG(TotalQuantity) AS AvgProductsPerOrder
FROM(
SELECT
order_number,
SUM(quantity) AS TotalQuantity
FROM Orders
GROUP BY order_number)t
UNION ALL
SELECT 'Avg Rev. per Cust', ROUND(AVG(Revenue),1) AS AverageRevenuepercustomers
FROM
(SELECT SUM(price * quantity) AS Revenue,
c.customer_id
FROM Orders o
LEFT JOIN Customers c
ON o.customer_id = c.customer_id
LEFT JOIN Products p
ON o.product_id = p.product_id
GROUP BY c.customer_id)t


--Magnitudes
--Total customers by region

SELECT region,
COUNT (customer_id) NumberOfCustomers
FROM Customers
GROUP BY region
ORDER BY NumberOfCustomers DESC

--Total customers by city

SELECT city,
COUNT (customer_id) NumberOfCustomers
FROM Customers
GROUP BY city
ORDER BY NumberOfCustomers DESC

--Total Products by Category

SELECT category,
COUNT(product_id) AS TotalProducts
FROM Products
GROUP BY category
ORDER BY TotalProducts DESC

--Total Products per brand

SELECT brand,
COUNT(product_id) AS TotalProducts
FROM Products
GROUP BY brand
ORDER BY TotalProducts DESC

--Avg cost in each brand
SELECT brand,
(SUM(cost)/COUNT(product_id)) AS CostperBrand
FROM Products
GROUP BY brand
HAVING COUNT(product_id) > 3
ORDER BY CostperBrand DESC

--Avg price in each brand
SELECT brand,
(SUM(price)/COUNT(product_id)) AS PriceperBrand
FROM Products
GROUP BY brand
HAVING COUNT(product_id) > 3
ORDER BY PriceperBrand DESC

--Avg profit in each brand
SELECT brand,
(SUM(price)/COUNT(product_id)) - (SUM(cost)/COUNT(product_id)) AS ProfitperBrand
FROM Products
GROUP BY brand
HAVING COUNT(product_id) > 3
ORDER BY ProfitperBrand DESC

--Union the results
SELECT brand,
ROUND((SUM(price)/COUNT(product_id)),1) AS PriceperBrand,
ROUND((SUM(cost)/COUNT(product_id)),1) AS CostperBrand,
ROUND((SUM(price)/COUNT(product_id)) - (SUM(cost)/COUNT(product_id)),1) AS ProfitperBrand
FROM Products
GROUP BY brand
HAVING COUNT(product_id) > 3
ORDER BY ProfitperBrand DESC

--Total Revenue generated for each category
SELECT 
p.category,
SUM(o.quantity*p.price) AS Revenue
FROM Orders o
LEFT JOIN Products p
ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY Revenue DESC

--Total Revenue generated for each brand
SELECT 
p.brand,
SUM(o.quantity*p.price) AS Revenue
FROM Orders o
LEFT JOIN Products p
ON o.product_id = p.product_id
GROUP BY p.brand
ORDER BY Revenue DESC

--Total revenue generated for each city
SELECT 
city,
SUM(p.price * o.quantity) AS Revenue
FROM Orders o
LEFT JOIN Customers c
ON o.customer_id = c.customer_id
LEFT JOIN Products p
ON o.product_id = p.product_id
GROUP BY city
ORDER BY Revenue DESC

--Total Revenue generated for each region
SELECT 
c.region,
SUM(p.price * o.quantity) AS Revenue
FROM Orders o
LEFT JOIN Customers c
ON o.customer_id = c.customer_id
LEFT JOIN Products p
ON o.product_id = p.product_id
GROUP BY c.region
ORDER BY Revenue DESC

--Distribution of sold items across regions
SELECT 
c.region,
COUNT (o.product_id) AS SoldItems
FROM Orders o
LEFT JOIN Customers c
ON o.customer_id = c.customer_id
GROUP BY c.region
ORDER BY SoldItems DESC

--Total Customers for each region
SELECT 
region,
COUNT(customer_id) as TotalCustomers
FROM Customers
GROUP BY region
ORDER BY TotalCustomers DESC

--Total Revenue by each customer
SELECT 
c.customer_id,
c.first_name,
c.last_name,
SUM(price * quantity) AS Revenue
FROM Orders o
LEFT JOIN Products p
ON o.product_id = p.product_id
LEFT JOIN Customers c
ON o.customer_id = c.customer_id
GROUP BY c.customer_id,
c.first_name,
c.last_name
ORDER BY Revenue DESC

--Total Revenue per product
SELECT 
p.product_id,
p.product_name,
SUM(price * quantity) AS Revenue
FROM Orders o
LEFT JOIN Products p
ON o.product_id = p.product_id
LEFT JOIN Customers c
ON o.customer_id = c.customer_id
GROUP BY p.product_id,
p.product_name
ORDER BY Revenue DESC

--Profit per product
SELECT product_id,
product_name,
ROUND((SUM(price)/COUNT(product_id)) - (SUM(cost)/COUNT(product_id)),1) AS Profit
FROM Products
GROUP BY product_id,
product_name
ORDER BY Profit DESC

--=======
--Ranking
--=======

--Top 5 products which generates highest revenue

SELECT
product_id,
product_name,
Revenue,
RANK() OVER(ORDER BY Revenue DESC) AS Ranking
FROM
(SELECT TOP 5
p.product_id,
p.product_name,
SUM(price * quantity) AS Revenue
FROM Orders o
LEFT JOIN Products p
ON o.product_id = p.product_id
LEFT JOIN Customers c
ON o.customer_id = c.customer_id
GROUP BY p.product_id,
p.product_name
ORDER BY Revenue DESC)t

--Worst performing products in terms of sales
SELECT product_id,
product_name,
Revenue,
RANK() OVER(ORDER BY Revenue ) AS Ranking
FROM
(SELECT TOP 5
p.product_id,
p.product_name,
SUM(price * quantity) AS Revenue
FROM Orders o
LEFT JOIN Products p
ON o.product_id = p.product_id
LEFT JOIN Customers c
ON o.customer_id = c.customer_id
GROUP BY p.product_id,
p.product_name
ORDER BY Revenue)t

--Find top 5 customers who have generated the highest revenue
SELECT
customer_id,
first_name,
last_name,
Revenue,
RANK() OVER(ORDER BY Revenue DESC) AS Ranking
FROM
(SELECT TOP 5
c.customer_id,
c.first_name,
c.last_name,
SUM(price * quantity) AS Revenue
FROM Orders o
LEFT JOIN Products p
ON o.product_id = p.product_id
LEFT JOIN Customers c
ON o.customer_id = c.customer_id
GROUP BY c.customer_id,
c.first_name,
c.last_name
ORDER BY Revenue DESC)t
