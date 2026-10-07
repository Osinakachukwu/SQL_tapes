
USE  crash_course;
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  name VARCHAR(50), country VARCHAR(5), signup_date DATE);
CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50), category VARCHAR(30), price DECIMAL(10,2));
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT, order_date DATE, status VARCHAR(20));
CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_id INT, product_id INT, quantity INT, unit_price DECIMAL(10,2));

INSERT INTO customers VALUES
(1,'Ada','UK','2024-01-05'),(2,'Bo','US','2024-01-20'),
(3,'Cai','US','2024-02-11'),(4,'Dee','CA','2024-02-15'),
(5,'Ez','UK','2024-03-02');

INSERT INTO products VALUES
(10,'Keyboard','Electronics',45),(11,'Mouse','Electronics',25),
(12,'Desk','Furniture',150),(13,'Chair','Furniture',90),
(14,'Notebook','Stationery',5);

INSERT INTO orders VALUES
(100,1,'2024-01-10','completed'),(101,1,'2024-02-14','completed'),
(102,2,'2024-01-25','completed'),(103,3,'2024-02-20','cancelled'),
(104,3,'2024-03-05','completed'),(105,4,'2024-03-18','completed'),
(106,1,'2024-03-22','completed'),(107,5,'2024-03-25','completed');

INSERT INTO order_items VALUES
(1,100,10,1,45),(2,100,11,2,25),(3,101,12,1,150),
(4,102,13,1,90),(5,104,10,2,45),(6,104,14,5,5),
(7,105,11,1,25),(8,106,12,1,150),(9,106,13,1,90),
(10,107,14,10,5);