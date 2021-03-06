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
    order_qty int,
    PRIMARY KEY (order_id , product_id),
    FOREIGN KEY (order_id)
        REFERENCES orderr (order_id),
    FOREIGN KEY (product_id)
        REFERENCES product (product_id)
);
INSERT INTO customer (customer_id, customer_name, customer_age) VALUES ('1', 'Minh Quan', '10'),
 ('2', 'Ngoc Oanh', '20'),
 ('3', 'Hong Ha', '50');
INSERT INTO `orderr` (order_id, customer_id, order_date) VALUES ('1', '1', '2006/03/21'),
 ('2', '2', '2006/03/23'),
 ('3', '1', '2006/03/13');
INSERT INTO product (product_id, product_name, product_prices) VALUES ('1', 'May Giat', '3'),
 ('2', 'Tu Lanh', '5'),
('3', 'Dieu Hoa', '7'),
 ('4', 'Quat', '1'),
('5', 'Bep Dien', '2');
INSERT INTO order_detail (order_id, product_id, order_qty) VALUES ('1', '1', '3'),
 ('1', '3', '7'),
 ('1', '4', '2'),
 ('2', '1', '1'),
('3', '1', '8'),
('2', '5', '4'),
('2', '3', '3');