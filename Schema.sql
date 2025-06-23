CREATE DATABASE Ecommerce;

USE Ecommerce;

CREATE TABLE Customers (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  full_name VARCHAR(100),
  email VARCHAR(100) UNIQUE,
  phone VARCHAR(15),
  address TEXT,
  city VARCHAR(50),
  state VARCHAR(50),
  country VARCHAR(50),
  zip_code VARCHAR(10)
);


CREATE TABLE Products (
  product_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100),
  description TEXT,
  category VARCHAR(50),
  price DECIMAL(10,2),
  stock_quantity INT,
  brand VARCHAR(50),
  rating DECIMAL(2,1),
  is_active BOOLEAN DEFAULT TRUE
);


CREATE TABLE Orders (
  order_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  status VARCHAR(30) DEFAULT 'Pending',
  total_amount DECIMAL(10,2),
  shipping_address TEXT,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


CREATE TABLE Order_Items (
  order_item_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  product_id INT,
  quantity INT,
  unit_price DECIMAL(10,2),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);


CREATE TABLE Payments (
  payment_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  payment_mode VARCHAR(30),      -- e.g., UPI, Card, COD
  payment_status VARCHAR(20),    -- e.g., Success, Failed
  payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);


CREATE TABLE Shipping (
  shipping_id INT PRIMARY KEY AUTO_INCREMENT,
  order_id INT,
  carrier_name VARCHAR(50),
  tracking_number VARCHAR(50),
  estimated_delivery DATE,
  delivery_status VARCHAR(30),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);


CREATE TABLE Cart (
  cart_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  product_id INT,
  quantity INT DEFAULT 1,
  added_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

