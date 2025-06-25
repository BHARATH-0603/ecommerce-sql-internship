E-Commerce Relational Database – SQL Internship Task 1

This project demonstrates the design of a real-world e-commerce database system using SQL. It includes a normalized schema with relationships, constraints, and calculated fields — suitable for online retail operations.

---

Tech Used:
- MySQL Workbench
- SQL (DDL)
- ER Diagram (EER Model)

---

Domain Overview:
This schema replicates a basic online shopping system where:
- Customers place orders for products.
- Each order can contain multiple items.
- Payments are tracked per order.
- Products are shipped with tracking information.
- Carts simulate the shopping process before checkout.

---

Tables Created:

1. Customers
Stores customer profile and address data.

2. Products
Product catalog with stock, brand, rating.

3. Orders
Represents a customer's order instance.

4. Order_Items
Breaks down each order into products & quantity.

5. Payments
Captures payment status & method per order.

6. Shipping
Tracks delivery carrier and status.

7. Cart
Simulates items added before checkout.

---

Relationships

- 1 Customer -> M Orders  
- 1 Order -> M Order_Items  
- 1 Product -> M Order_Items  
- 1 Order -> 1 Payment  
- 1 Order -> 1 Shipping

---


How to Use:

1. Run 'Schema.sql' in MySQL Workbench.
2. View relationships in EER Diagram view.
3. Extend the DB with triggers/functions as future task.

---

BY:

Bharath Kumar A  
B.Tech CSE | Final Year  
[LinkedIn Profile](www.linkedin.com/in/bharath-kumar-b939262b3)

---

# SQL Internship – Task 2: DML & NULL Handling

Objective:
To practice Data Manipulation Language (INSERT, UPDATE, DELETE) and handle NULLs & constraints using MySQL.

What I Did:
- Populated 'Customers', 'Products', 'Orders' and more with real-world values
- Used 'NULL' to simulate missing data
- Applied 'DEFAULT', 'NOT NULL', and 'ON DELETE CASCADE'
- Demonstrated 'INSERT USING SELECT'
- Cleaned data using 'DELETE' & 'UPDATE'

Files:
- 'task2.sql' -> All DML queries  
- 'ER DIAGRAM.png' ->ER diagram

Concepts Covered:
- NULL handling
- Constraints: NOT NULL, DEFAULT
- Insert with SELECT
- ON DELETE CASCADE

Key Highlights:
-  Used 'realistic data' (names, brands, addresses)
-  Demonstrated 'NULL handling' for missing fields
-  Applied 'UPDATE' to adjust stock after order
-  Used 'AUTO_INCREMENT', 'DEFAULT', and 'CHECK' constraints
-  Uploaded to GitHub in clean format for reusability


BY:
Bharath Kumar A
- B.Tech CSE – Final Year
- Passionate about Data Analytics, SQL & Visualization
- LinkedIn Profile -> www.linkedin.com/in/bharath-kumar-b939262b3


This project helped me apply theoretical SQL knowledge to build a fully functional, normalized, and query-ready database system. I look forward to exploring more with Joins, Views, and Stored Procedures in future tasks.
