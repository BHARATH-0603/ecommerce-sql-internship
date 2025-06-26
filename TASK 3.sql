select * from customers;  -- Shows all data in customers table.
select * from orders;      -- Shows all data in orders table.
SELECT * FROM Products;  -- Shows all data in Products table.
select * from order_items;   -- Shows all data in order_item table.
select * from shipping;     -- Shows all data in shipping table.
select * from backup_products;   -- Shows all data in backup_products table.

SELECT full_name, city FROM Customers 
WHERE state = 'Tamil Nadu';               --  Shows customer name and city only from Tamil Nadu.

SELECT * FROM Orders 
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31';         -- Orders placed in the year 2024.

SELECT * FROM order_items
WHERE unit_price =4999 AND product_id=1;    -- select the rows with unit price is 4999 and product id is 1.

SELECT * FROM order_items
WHERE unit_price = 2999 OR product_id = 1;    -- select the rows with unit price is 2999 or product id is 1.


SELECT name FROM Products 
WHERE name LIKE '%i_%';                     -- SELECT name FROM Products WHERE name starts eith 'i'.

SELECT DISTINCT city FROM Customers;        -- Unique cities from where customers come.

SELECT product_id, name, price FROM Products ORDER BY price DESC;  -- Products sorted from highest to lowest price.

SELECT * FROM Customers 
WHERE city IN ('Chennai', 'Coimbatore');       -- Customers from either Chennai or Coimbatore.

SELECT full_name AS CustomerName FROM Customers;  -- Aliasing a column (full_name to CustomerName).

SELECT * FROM Payments LIMIT 5;                 -- Only the first 5 rows — useful for preview/testing.

