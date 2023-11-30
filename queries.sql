-- Sales Analysis:
-- To analyze sales data to identify trends, best-selling products, or peak sales periods.

SELECT ProductID, SUM(SaleAmount) AS TotalSales, COUNT(SaleID) AS NumberOfSales
FROM Sales
WHERE SaleDate BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY ProductID
ORDER BY TotalSales DESC;

-- Employee Performance:
-- Evaluate the performance of employees based on their sales or other performance metrics.

SELECT EmployeeID, SUM(SaleAmount) AS TotalSales
FROM Sales
WHERE SaleDate BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY EmployeeID
ORDER BY TotalSales DESC;

-- Customer Analysis:
-- Understand customer behavior, such as repeat purchases or total spending.

SELECT CustomerID, COUNT(SaleID) AS PurchaseCount, SUM(SaleAmount) AS TotalSpent
FROM Sales
GROUP BY CustomerID
ORDER BY TotalSpent DESC;

-- Product Category Performance:
-- Evaluate which product categories are performing well.

SELECT Category, SUM(Sales.SaleAmount) AS CategorySales
FROM Sales
JOIN Products ON Sales.ProductID = Products.ProductID
GROUP BY Category
ORDER BY CategorySales DESC;