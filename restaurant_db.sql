-- إنشاء قاعدة البيانات
CREATE DATABASE IF NOT EXISTS restaurant_db;

-- استخدام قاعدة البيانات المنشأة
USE restaurant_db;

-- إنشاء جدول لقائمة الطعام
CREATE TABLE IF NOT EXISTS menu (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL
);

-- إنشاء جدول للعملاء
CREATE TABLE IF NOT EXISTS customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20)
);

-- إنشاء جدول للطباخين
CREATE TABLE IF NOT EXISTS chefs (
    chef_id INT AUTO_INCREMENT PRIMARY KEY,
    chef_name VARCHAR(100) NOT NULL,
    specialty VARCHAR(100)
);

-- إنشاء جدول لطلبات العملاء
CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    chef_id INT,
    item_id INT,
    quantity INT,
    total_price DECIMAL(10, 2),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (chef_id) REFERENCES chefs(chef_id),
    FOREIGN KEY (item_id) REFERENCES menu(item_id)
);
