CREATE DATABASE IF NOT EXISTS pizzeria CHARACTER SET utf8mb4;
USE pizzeria;
# 1
CREATE TABLE IF NOT EXISTS provinces(
    province_id INT AUTO_INCREMENT PRIMARY KEY,
    province_name VARCHAR(50) NOT NULL,
);
# 2
CREATE TABLE IF NOT EXISTS cities(
    city_id INT AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL,
    province_id INT NOT NULL,
    FOREIGN KEY (province_id) REFERENCES provinces(province_id)
);
# 3
CREATE TABLE IF NOT EXISTS clients(
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address VARCHAR(255) NOT NULL,
    postcode VARCHAR(20) NOT NULL,
    city_id INT NOT NULL,
    province_id INT NOT NULL,
    phone VARCHAR(20) NOT NULL,
    FOREIGN KEY(city_id) REFERENCES cities (city_id),
    FOREIGN KEY(province_id) REFERENCES provinces (province_id)
);
# 4
CREATE TABLE IF NOT EXISTS products(
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    `description` TEXT,
    image_url TEXT,
    price DECIMAL(10, 2) NOT NULL,
    product_type ENUM('Pizza', 'Hamburger', 'Beverage')
);
# 5
CREATE TABLE IF NOT EXISTS pizza_categories(
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL UNIQUE
);
# 6
CREATE TABLE IF NOT EXISTS pizzas(
    product_id INT NOT NULL,
    category_id INT NOT NULL,
    PRIMARY KEY (product_id, category_id),
    FOREIGN KEY (product_id) REFERENCES products (product_id),
    FOREIGN KEY (category_id) REFERENCES pizza_categories (category_id)
);
# 7
CREATE TABLE IF NOT EXISTS stores(
    store_id INT AUTO_INCREMENT PRIMARY KEY,
    address VARCHAR(255) NOT NULL,
    postal_code VARCHAR(10) NOT NULL,
    city_id INT NOT NULL,
    province_id INT NOT NULL,
    FOREIGN KEY(city_id) REFERENCES cities (city_id),
    FOREIGN KEY(province_id) REFERENCES provinces (province_id)
);
# 8
CREATE TABLE IF NOT EXISTS employees(
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    dni VARCHAR(12) NOT NULL,
    telephone VARCHAR(20) NOT NULL,
    `role` ENUM('COOK', 'DELIVERY') NOT NULL,
    store_id INT NOT NULL,
    FOREIGN KEY(store_id) REFERENCES stores (store_id)
);
# 9
CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT NOT NULL,
    order_datetime DATETIME NOT NULL,
    is_delivery TINYINT(1) NOT NULL,
    -- 1= delivery  0= pickup
    total_price DECIMAL(10, 2) NOT NULL,
    store_id INT NOT NULL,
    delivery_employee_id INT NULL,
    -- Solo para entrega a domicilio
    delivery_datetime DATETIME NULL,
    -- Solo para entrega a domicilio
    FOREIGN KEY (client_id) REFERENCES clients (client_id),
    FOREIGN KEY (store_id) REFERENCES stores (store_id),
    FOREIGN KEY (delivery_employee_id) REFERENCES employees (employee_id)
);
# 10
CREATE TABLE IF NOT EXISTS order_details (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);