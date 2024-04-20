-- Create a new MySQL database named "PLPSales"
CREATE DATABASE IF NOT EXISTS PLPSales; 
 
-- Design a table named "Sales" with the attributes
USE PLPSales;
CREATE TABLE IF NOT EXISTS Sales ( 
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    Category VARCHAR(50),
    QuantitySold INT(10),
    Revenue INT(10)
    );
    
-- Populating Sales table with sample data.
INSERT INTO Sales (Category, QuantitySold, Revenue) VALUES 
('Milk', 26,  1000),
('Sugar', 30, 2000),
('Salt', 31,  4000),
('Coke', 40,  5000),
('Milk', 26,  1000),
('Sugar', 30, 2000),
('Salt', 31,  4000),
('Coke', 40,  5000);

-- Calculate the total quantity sold and revenue for each product category.
SELECT Category,
       SUM(QuantitySold) AS TotalQuantitySold,
       SUM(Revenue) AS TotalRevenue
FROM Sales
GROUP BY Category

-- Find the average revenue per unit sold for each product category.
SELECT Category,
       AVG(Revenue / QuantitySold) AS Average_Revenue
FROM Sales
GROUP BY Category

-- Identify the product categories with the highest total revenue.

SELECT Category
FROM ( SELECT Category,
           SUM(Revenue) AS TotalRevenue
    FROM Sales
    GROUP BY Category
    ORDER BY TotalRevenue DESC
 ) AS Highest_Revenue
