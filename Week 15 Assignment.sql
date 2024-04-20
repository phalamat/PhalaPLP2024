-- PLPSales database was created in assignment 12
USE PLPSales;
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10,2)
);

INSERT INTO Orders VALUES 
(1, 4003, 15, 110.99),
(2, 5003, 32, 1115.00),
(3, 6003, 2, 3110.00),
(4, 7003, 11, 3420.30);

-- Calculate the total quantity of products sold.
SELECT SUM(Quantity) AS TotalQuantity
FROM Orders;

-- Find the average price of products.
SELECT AVG(Price) AS AveragePrice
FROM Orders;

-- Identify the product with the highest price.
SELECT ProductID, MAX(Price) AS HighestPrice
FROM Orders
GROUP BY ProductID;