CREATE DATABASE IF NOT EXISTS pizzeria CHARACTER SET utf8mb4;

USE pizzeria;

# 1
CREATE TABLE IF NOT EXISTS customers(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
address VARCHAR(100) NOT NULL,
postcode VARCHAR(20) NOT NULL,
city_id INT NOT NULL,
province_id INT NOT NULL,
telephone VARCHAR(20) NOT NULL,
FOREIGN KEY(city_id) REFERENCES cities (city_id),
FOREIGN KEY(province_id) REFERENCES provinces (province_id) ,
);

# 2
CREATE TABLE IF NOT EXISTS cities(
city_id INT AUTO_INCREMENT PRIMARY KEY ,
city_name VARCHAR(50) NOT NULL,
province_id INT NOT NULL,
FOREIGN KEY (province_id) REFERENCES provinces(province_id)
);


# 3
CREATE TABLE IF NOT EXISTS provinces(
province_id INT AUTO_INCREMENT PRIMARY KEY ,
province_name VARCHAR(50) NOT NULL,
);



# 4
CREATE TABLE IF NOT EXISTS orders (
order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id  INT NOT NULL,
order_datetime DATETIME NOT NULL,
is_delivery BOOLEAN(ture,false ) NOT NULL,
total_price DECIMAL(20,2) NOT NULL,
store_id INT NOT NULL,
employee_id INT NOT NULL,
delivery_datetime DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (customer_id ) REFERENCES customers (customer_id ),
FOREIGN KEY (store_id ) REFERENCES stores (store_id ),
FOREIGN KEY (employee_id ) REFERENCES employees (employee_id )
);

# 5
CREATE TABLE IF NOT EXISTS products(
product_id INT AUTO_INCREMENT PRIMARY KEY,
product_name VARCHAR(50) NOT NULL,
description VARCHAR(50),
image_url VARCHAR(50),
price DECIMAL(10,2) NOT NULL,
product_type ENUM('Pizza','Hamburger','Beverage')
);


# 6
CREATE TABLE IF NOT EXISTS pizza_categories(
category_id INT AUTO_INCREMENT PRIMARY KEY,
category_name VARCHAR(50) NOT NULL
);

# 7
CREATE TABLE IF NOT EXISTS stores(
store_id INT AUTO_INCREMENT PRIMARY KEY,
address VARCHAR(50) NOT NULL,
postal_code VARCHAR(10) NOT NULL,
city_id INT NOT NULL,
province_id INT NOT NULL,
FOREIGN KEY(city_id) REFERENCES cities (city_id),
FOREIGN KEY(province_id) REFERENCES provinces (province_id) 
);

# 8
CREATE TABLE IF NOT EXISTS employees(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
dni VARCHAR(10) NOT NULL,
telephone VARCHAR(20) NOT NULL,
role ENUM('cook','deliveryman') NOT NULL,
store_id INT NOT NULL,
FOREIGN KEY(store_id) REFERENCES stores (store_id),
);

# 9
CREATE TABLE IF NOT EXISTS order_details (
order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
order_id INT NOT NULL,
product_id INT NOT NULL,
quantity INT NOT NULL,
unit_price DECIMAL(10,2) NOT NULL,
subtotal_price INT NOT NULL
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

