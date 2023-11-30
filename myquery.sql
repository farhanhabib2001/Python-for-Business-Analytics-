-- Active: 1700996368334@@127.0.0.1@3306@fall_db
-- Retrieve total sales amount for each employee
SELECT
    EmployeeID,
    SUM(SaleAmount) AS TotalSales
FROM
    Sales
GROUP BY
    EmployeeID;

-- Identify products with the highest sales
SELECT
    ProductID,
    SUM(SaleAmount) AS TotalSales
FROM
    Sales
GROUP BY
    ProductID
ORDER BY
    TotalSales DESC
LIMIT 5;

-- Retrieve the total salary expenses for each department
SELECT
    DepartmentID,
    SUM(Salary) AS TotalSalaryExpenses
FROM
    Employees
GROUP BY
    DepartmentID;

-- List employees hired after a specific date
SELECT
    EmployeeID,
    FirstName,
    LastName,
    HireDate
FROM
    Employees
WHERE
    HireDate > '2023-01-01';

-- Retrieve products with low stock quantities
SELECT
    ProductID,
    ProductName,
    StockQuantity
FROM
    Products
WHERE
    StockQuantity < 10;

-- Calculate the total sales amount for each product
SELECT
    p.ProductID,
    p.ProductName,
    SUM(s.SaleAmount) AS TotalSales
FROM
    Products p
JOIN
    Sales s ON p.ProductID = s.ProductID
GROUP BY
    p.ProductID, p.ProductName;

-- List departments with their total budget
SELECT
    DepartmentID,
    DepartmentName,
    Budget
FROM
    Departments;

-- Find the department with the highest budget
SELECT
    DepartmentID,
    DepartmentName,
    Budget
FROM
    Departments
ORDER BY
    Budget DESC
LIMIT 1;

-- Retrieve customers who spent more than a specific amount
SELECT
    CustomerID,
    FirstName,
    LastName,
    TotalSpent
FROM
    Customers
WHERE
    TotalSpent > 1000;

--  Count the number of new customers registered each month
SELECT
    DATE_FORMAT(RegistrationDate, '%Y-%m') AS Month,
    COUNT(CustomerID) AS NewCustomers
FROM
    Customers
GROUP BY
    Month;
