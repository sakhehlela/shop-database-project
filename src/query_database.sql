\c shop;

-- 1. Select all records from customers table
SELECT 
    * 
FROM customers;

-- 2. Select only the name columns from the customers table
SELECT 
    first_name, 
    last_name 
FROM customers;

-- 3. Show the full name of the customer whose customer_id is 1
SELECT CONCAT(first_name, ' ', last_name) AS full_name 
FROM customers 
WHERE id = 1;

-- 4. Update the record for customer_id = 1 on the customers table so that the name is “lerato mabitso”
UPDATE customers 
SET first_name = 'lerato', last_name = 'mabitso' 
WHERE id = 1;

-- 5. Delete the record from the customers table for customer_id = 2
DELETE FROM 
    customers 
WHERE id = 2;
-- 6. Select all unique statuses from the orders table and get a count of the number of orders for each unique status
SELECT status, COUNT(*) 
FROM orders 
GROUP BY status;

-- 7. Return the maximum payment made on the payments table
SELECT ROUND(MAX(amount), 2) AS max_payment 
FROM payments;

-- 8. Select all customers from the customers table, sorted by the country column
SELECT * 
FROM customers 
ORDER BY country;

-- 9. Select all products with a price between 100 and 600
SELECT * 
FROM products 
WHERE buy_price BETWEEN 100 AND 600;

-- 10. Select all fields from customers where the country is 'germany' AND the city is 'berlin'
SELECT * 
FROM customers 
WHERE country = 'germany' AND city = 'berlin';

-- 11. Select all fields from customers where the city is 'cape town' OR 'durban'
SELECT * 
FROM customers 
WHERE city IN ('cape town', 'durban');

-- 12. Select all records from products where the price is greater than 500
SELECT * 
FROM products 
WHERE buy_price > 500;

-- 13. Return the sum of the amounts on the payments table
SELECT ROUND(SUM(amount), 2) AS total_amount 
FROM payments;

-- 14. Count the number of shipped orders in the orders table
SELECT COUNT(*) AS shipped_orders_count 
FROM orders 
WHERE status = 'shipped';

-- 15. Return the average price of all products, in rands and dollars (assume the exchange rate is 12 to the dollar)
SELECT ROUND(AVG(buy_price), 2) AS average_price_in_rands, 
       ROUND(AVG(buy_price) / 12, 2) AS average_price_in_dollars 
FROM products;

-- 16. Using INNER JOIN create a query that selects all payments with customer information
SELECT payments.*, customers.first_name, customers.last_name 
FROM payments
INNER JOIN customers ON payments.customer_id = customers.id;

-- 17. Select all products that have turnable front wheels
SELECT * 
FROM products 
WHERE description LIKE '%turnable front wheels%';