CREATE DATABASE IF NOT EXISTS optica CHARACTER SET utf8mb4;

USE optica;

CREATE TABLE IF NOT EXISTS suppliers(
supplier_id INT AUTO_INCREMENT PRIMARY KEY ,
supplier_name VARCHAR(30) NOT NULL,
nif VARCHAR(9) NOT NULL UNIQUE,
street VARCHAR(50) NOT NULL,
`number` VARCHAR(10) NOT NULL,
`floor` VARCHAR(10),
door VARCHAR(10),
city VARCHAR(50) NOT NULL,
postcode VARCHAR(20) NOT NULL,
country VARCHAR(50) NOT NULL  DEFAULT 'Spain',
telephone VARCHAR(20) NOT NULL,
fax VARCHAR(20) 
);


CREATE TABLE IF NOT EXISTS brands(
brand_id INT AUTO_INCREMENT PRIMARY KEY ,
brand_name VARCHAR(50) NOT NULL,
supplier_id INT NOT NULL,
FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id) ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS glasses (
glass_id INT AUTO_INCREMENT PRIMARY KEY,
brand_id INT NOT NULL,
left_graduation DECIMAL(10,2 ) NOT NULL,
right_graduation DECIMAL(10,2 ) NOT NULL,
left_colour VARCHAR(20) NOT NULL,
right_colour VARCHAR(20) NOT NULL,
frame_type ENUM('rimless', 'plastic', 'metal') NOT NULL,
frame_colour VARCHAR(20) NOT NULL,
price DECIMAL(10,2) NOT NULL,
FOREIGN KEY (brand_id) REFERENCES brands(brand_id) ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS customers(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(50) NOT NULL,
street VARCHAR(50) NOT NULL,
`number` VARCHAR(10) NOT NULL,
`floor` VARCHAR(10),
door VARCHAR(10),
city VARCHAR(50) NOT NULL,
postcode VARCHAR(20) NOT NULL,
country VARCHAR(50) NOT NULL  DEFAULT 'Spain',
telephone VARCHAR(20) NOT NULL,
email VARCHAR(100) NOT NULL,
registration_date DATE NOT NULL,
recommended_by INT,
FOREIGN KEY(recommended_by) REFERENCES customers (customer_id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS employees(
employee_id INT AUTO_INCREMENT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
dni VARCHAR(9) NOT NULL UNIQUE,
telephone VARCHAR(20),
hire_date DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS sales(
sale_id INT AUTO_INCREMENT PRIMARY KEY,
glass_id INT NOT NULL,
customer_id INT NOT NULL,
employee_id INT NOT NULL,
sale_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY(glass_id) REFERENCES glasses (glass_id),
FOREIGN KEY(customer_id) REFERENCES customers (customer_id),
FOREIGN KEY(employee_id) REFERENCES employees (employee_id)
);

USE optica;
SHOW DATABASES;
SELECT DATABASE();
DESC  sales;
SHOW TABLES;
SELECT * FROM glasses LIMIT 10;
