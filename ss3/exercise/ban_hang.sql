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
INSERT INTO orderr (order_id, customer_id, order_date) VALUES ('1', '1', '2006/03/21'),
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

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select order_id ,order_date,order_total_prices
from orderr; 

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select c.customer_id,customer_name, product_name
from customer c
join orderr o on c.customer_id = o.customer_id
join order_detail od on o.order_id = od.order_id
join product p on od.product_id = p.product_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select customer_name 
from customer c
left join orderr o on c.customer_id = o.customer_id
where isnull(order_id);


select o.order_id,order_date,sum(od.order_qty*product_prices) as total_prices
from customer c
join orderr o on c.customer_id = o.customer_id
join order_detail od on o.order_id = od.order_id
left join product p on od.product_id = p.product_id
group by od.order_id
