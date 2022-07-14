drop database if exists quan_li_ban_hang;
create database quan_li_ban_hang;
use quan_li_ban_hang;

create table customer(
customer_id int primary key,
customer_name varchar(55),
customer_age int 
);

create table orderr(
order_id int primary key,
customer_id int,
order_date date,
order_total_prices int,
foreign key(customer_id) references customer(customer_id)
);

create table product(
product_id int primary key,
product_name varchar(55),
product_prices int
);

create table order_detail(
order_id int,
product_id int,
primary key(order_id,product_id),
foreign key(order_id) references orderr(order_id),
foreign key(product_id) references product(product_id)
);