
-- Adding rows
INSERT INTO Customers (full_name, email, phone, address, city, state, country, zip_code)
VALUES 
('Rahul Sharma', 'rahul@example.com', '9876543210', '123 MG Road', 'Mumbai', 'Maharashtra', 'India', '400001'),
('Priya Iyer', NULL, '9123456789', '56 Gandhi Nagar', 'Chennai', 'Tamil Nadu', 'India', NULL);
-- NULL is used Where Data is Missing.

INSERT INTO Products (name, category, price, stock_quantity, brand, rating)
VALUES 
('iPhone 14', 'Electronics', 79999.99, 25, 'Apple', 4.8),
('Dell XPS 13', 'Laptops', 99999.00, 15, 'Dell', NULL);

INSERT INTO Orders (order_id, customer_id, order_date, status, total_amount, shipping_address)
VALUES 
(102, 1, '2025-06-25', 'Confirmed', 0.00, 'Block 2, Chennai');


INSERT INTO Order_Items (order_id, product_id, quantity, unit_price)
VALUES 
(102, 1, 1, 4999.00),   
(102, 2, 2, 2999.00),   
(102, 1, 1, 999.00);   


-- Update Multiple rowa
UPDATE Products
SET stock_quantity = stock_quantity + 10
WHERE brand = 'Apple';

UPDATE Customers
SET city = 'Bangalore'
WHERE city IS NULL;

-- Deleting Data
DELETE FROM Order_Items
WHERE quantity = 0;

DELETE FROM Customers
WHERE email IS NULL;

create table backup_products(
  name varchar(30),
  category varchar(30),
  price DECIMAL,
  stock_quantity decimal,
  brand varchar(20),
  rating decimal

);

-- Copy all Apple products into a backup_products table
INSERT INTO backup_products (name, category, price, stock_quantity, brand, rating)
SELECT name, category, price, stock_quantity, brand, rating
FROM Products
WHERE brand = 'Apple';


-- Default Constraints
INSERT INTO Payments (order_id, payment_mode)
VALUES (102, 'UPI');  

ALTER TABLE Payments
MODIFY payment_status VARCHAR(20) DEFAULT 'Pending';  -- status becomes 'Pending' automatically


-- ON DELETE CASCADE
ALTER TABLE Orders
ADD CONSTRAINT fk_customer
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
ON DELETE CASCADE;

select * from Products;
select * from Customers;
select * from order_items;
select * from orders;
select * from payments;
select * from backup_products;
