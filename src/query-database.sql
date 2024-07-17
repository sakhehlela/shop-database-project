SELECT * FROM Customers;
-- Select all records from the Customers table
SELECT * FROM Customers;

-- Select only the FirstName and LastName columns from the Customers table
SELECT FirstName, LastName FROM Customers;

-- Show the full name of the Customer whose CustomerID is 1
SELECT FirstName || ' ' || LastName AS FullName FROM Customers WHERE ID = 1;

-- Update the record for CustomerID = 1 on the Customers table so that the name is “Lerato Mabitso”
UPDATE Customers SET FirstName = 'Lerato', LastName = 'Mabitso' WHERE ID = 1;

-- Delete the record from the Customers table for customer 2 (CustomerID = 2)
DELETE FROM Customers WHERE ID = 2;

-- Select all unique statuses from the Orders table and get a count of the number of orders for each unique status
SELECT Status, COUNT(*) FROM Orders GROUP BY Status;

-- Return the MAXIMUM payment made on the Payments table
SELECT MAX(Amount) FROM Payments;

-- Select all customers from the Customers table, sorted by the Country column
SELECT * FROM Customers ORDER BY Country;

-- Select all products with a price BETWEEN R100 and R600
SELECT * FROM Products WHERE BuyPrice BETWEEN 100 AND 600;

-- Select all fields from Customers where the country is Germany AND the city is Berlin
SELECT * FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';

-- Select all fields from Customers where the city is Cape Town OR Durban
SELECT * FROM Customers WHERE City IN ('Cape Town', 'Durban');

-- Select all records from Products where the Price is GREATER than R500
SELECT * FROM Products WHERE BuyPrice > 500;

-- Return the sum of the Amounts on the Payments table
SELECT SUM(Amount) FROM Payments;

-- Count the number of shipped orders in the Orders table
SELECT COUNT(*) FROM Orders WHERE Status = 'Shipped';

-- Return the average price of all Products, in Rands and Dollars (assume the exchange rate is R12 to the Dollar)
SELECT AVG(BuyPrice) AS AveragePriceInRands, AVG(BuyPrice) / 12 AS AveragePriceInDollars FROM Products;

-- Using INNER JOIN create a query that selects all Payments with Customer information
SELECT Payments.*, Customers.FirstName, Customers.LastName 
FROM Payments
INNER JOIN Customers ON Payments.CustomerID = Customers.ID;

-- Select all products that have turnable front wheels
SELECT * FROM Products WHERE Description LIKE '%Turnable front wheels%';