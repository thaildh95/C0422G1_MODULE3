drop database if exists quan_li_ban_hang;
create database quan_li_ban_hang;
use quan_li_ban_hang;

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(55),
    customer_age INT
);

CREATE TABLE orderr (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_total_prices INT,
    FOREIGN KEY (customer_id)
        REFERENCES customer (customer_id)
);

CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(55),
    product_prices INT
);

CREATE TABLE order_detail (
    order_id INT,
    product_id INT,
    PRIMARY KEY (order_id , product_id),
    FOREIGN KEY (order_id)
        REFERENCES orderr (order_id),
    FOREIGN KEY (product_id)
        REFERENCES product (product_id)
);