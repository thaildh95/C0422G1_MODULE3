drop database if exists demo;
create database demo;
use demo;

create table product(
product_id int auto_increment primary key,
product_code int,
product_name varchar(55),
product_amount int,
product_description varchar(55),
product_status varchar(55)
);

insert into product(product_code,product_name,product_amount,product_description,product_status)
value 
(1,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(2,"Duong Trung Phong",5,"dien nuoc khong day du","khong ngon"),
(11,"Duong Hoang Yen",35,"day du","ngon vua vua"),
(9,"Can Tuong",15,"dien nuoc day du","ngon"),
(8,"Mac Ta",19,"dien nuoc day du","ngon"),
(4,"Cu Khuyet",0,"dien nuoc day du","ngon"),
(15,"Thu Ly",11,"dien nuoc day du","ngon"),
(12,"Hoang Bui",25,"dien nuoc day du","ngon"),
(13,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(14,"Chau Tan",15,"dien nuoc day du","ngon"),
(1,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(2,"Duong Trung Phong",5,"dien nuoc khong day du","khong ngon"),
(11,"Duong Hoang Yen",35,"day du","ngon vua vua"),
(9,"Can Tuong",15,"dien nuoc day du","ngon"),
(8,"Mac Ta",19,"dien nuoc day du","ngon"),
(4,"Cu Khuyet",0,"dien nuoc day du","ngon"),
(15,"Thu Ly",11,"dien nuoc day du","ngon"),
(12,"Hoang Bui",25,"dien nuoc day du","ngon"),
(13,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(14,"Chau Tan",15,"dien nuoc day du","ngon"),
(1,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(2,"Duong Trung Phong",5,"dien nuoc khong day du","khong ngon"),
(11,"Duong Hoang Yen",35,"day du","ngon vua vua"),
(9,"Can Tuong",15,"dien nuoc day du","ngon"),
(8,"Mac Ta",19,"dien nuoc day du","ngon"),
(4,"Cu Khuyet",0,"dien nuoc day du","ngon"),
(15,"Thu Ly",11,"dien nuoc day du","ngon"),
(12,"Hoang Bui",25,"dien nuoc day du","ngon"),
(13,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(14,"Chau Tan",15,"dien nuoc day du","ngon"),
(1,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(2,"Duong Trung Phong",5,"dien nuoc khong day du","khong ngon"),
(11,"Duong Hoang Yen",35,"day du","ngon vua vua"),
(9,"Can Tuong",15,"dien nuoc day du","ngon"),
(8,"Mac Ta",19,"dien nuoc day du","ngon"),
(4,"Cu Khuyet",0,"dien nuoc day du","ngon"),
(15,"Thu Ly",11,"dien nuoc day du","ngon"),
(12,"Hoang Bui",25,"dien nuoc day du","ngon"),
(13,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(14,"Chau Tan",15,"dien nuoc day du","ngon"),
(1,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(2,"Duong Trung Phong",5,"dien nuoc khong day du","khong ngon"),
(11,"Duong Hoang Yen",35,"day du","ngon vua vua"),
(9,"Can Tuong",15,"dien nuoc day du","ngon"),
(8,"Mac Ta",19,"dien nuoc day du","ngon"),
(4,"Cu Khuyet",0,"dien nuoc day du","ngon"),
(15,"Thu Ly",11,"dien nuoc day du","ngon"),
(12,"Hoang Bui",25,"dien nuoc day du","ngon"),
(13,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(14,"Chau Tan",15,"dien nuoc day du","ngon"),
(1,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(2,"Duong Trung Phong",5,"dien nuoc khong day du","khong ngon"),
(11,"Duong Hoang Yen",35,"day du","ngon vua vua"),
(9,"Can Tuong",15,"dien nuoc day du","ngon"),
(8,"Mac Ta",19,"dien nuoc day du","ngon"),
(4,"Cu Khuyet",0,"dien nuoc day du","ngon"),
(15,"Thu Ly",11,"dien nuoc day du","ngon"),
(12,"Hoang Bui",25,"dien nuoc day du","ngon"),
(13,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(14,"Chau Tan",15,"dien nuoc day du","ngon"),
(1,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(2,"Duong Trung Phong",5,"dien nuoc khong day du","khong ngon"),
(11,"Duong Hoang Yen",35,"day du","ngon vua vua"),
(9,"Can Tuong",15,"dien nuoc day du","ngon"),
(8,"Mac Ta",19,"dien nuoc day du","ngon"),
(4,"Cu Khuyet",0,"dien nuoc day du","ngon"),
(15,"Thu Ly",11,"dien nuoc day du","ngon"),
(12,"Hoang Bui",25,"dien nuoc day du","ngon"),
(13,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(14,"Chau Tan",15,"dien nuoc day du","ngon"),
(43,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(42,"Duong Trung Phong",5,"dien nuoc khong day du","khong ngon"),
(41,"Duong Hoang Yen",35,"day du","ngon vua vua"),
(40,"Can Tuong",15,"dien nuoc day du","ngon"),
(39,"Mac Ta",19,"dien nuoc day du","ngon"),
(38,"Cu Khuyet",0,"dien nuoc day du","ngon"),
(37,"Thu Ly",11,"dien nuoc day du","ngon"),
(36,"Hoang Bui",25,"dien nuoc day du","ngon"),
(35,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(34,"Chau Tan",15,"dien nuoc day du","ngon"),
(33,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(32,"Duong Trung Phong",5,"dien nuoc khong day du","khong ngon"),
(31,"Duong Hoang Yen",35,"day du","ngon vua vua"),
(30,"Can Tuong",15,"dien nuoc day du","ngon"),
(29,"Mac Ta",19,"dien nuoc day du","ngon"),
(19,"Cu Khuyet",0,"dien nuoc day du","ngon"),
(18,"Thu Ly",11,"dien nuoc day du","ngon"),
(12,"Hoang Bui",25,"dien nuoc day du","ngon"),
(17,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(16,"Chau Tan",15,"dien nuoc day du","ngon"),
(15,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(14,"Duong Trung Phong",5,"dien nuoc khong day du","khong ngon"),
(28,"Duong Hoang Yen",35,"day du","ngon vua vua"),
(27,"Can Tuong",15,"dien nuoc day du","ngon"),
(26,"Mac Ta",19,"dien nuoc day du","ngon"),
(25,"Cu Khuyet",0,"dien nuoc day du","ngon"),
(24,"Thu Ly",11,"dien nuoc day du","ngon"),
(23,"Hoang Bui",25,"dien nuoc day du","ngon"),
(21,"Hoang Thi Loan",15,"dien nuoc day du","ngon"),
(21,"Chau Tan",15,"dien nuoc day du","ngon");


-- Sử dụng index 
create index index_id on product(product_id);
drop index index_id on product;

explain select * from product 
where product_id =30;


-- Sử dụng sp

-- tìm thông tin theo id
delimiter $$
create procedure find_info_product_by_id(in product_id int)
begin
select p.product_id,p.product_name,p.product_amount,p.product_description
from product p
where p.product_id = product_id;
end $$
delimiter ;

-- xóa theo id
delimiter $$
create procedure delete_product_by_id(in product_id int)
begin
delete from product p
where p.product_id = product_id;
end $$
delimiter ;

-- thêm sản phẩm
delimiter $$
create procedure add_products(in new_id int,new_code int, new_name varchar(55),
new_amount int, new_description varchar(55), new_status varchar(55))
begin
insert into product(product_id,product_code,product_name,product_amount,product_description,product_status)
value(new_id,new_code,new_name,new_amount,new_description,new_status);
end $$ 
delimiter ;

call find_info_product_by_id(111);
call delete_product_by_id(34);
call add_products(111,1,"Dieu Thuyen",55,"dien nuoc day du","ngon");
alter table product add column product_price double;
-- view 
drop view if exists w_products;-- xóa view--
CREATE VIEW w_product AS
    SELECT
        product_code,
        product_name,
        product_price,
        product_status
    FROM
        product;
        
        select * from w_product;