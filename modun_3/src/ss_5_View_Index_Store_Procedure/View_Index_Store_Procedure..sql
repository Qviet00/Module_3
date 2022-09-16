drop database if  exists demo;

create database demo;
use demo;

create table products(
product_id int primary key auto_increment,
product_code int,
product_name varchar(45),
product_price int,
product_amount int,
product_description varchar(50),
product_status varchar(50));
insert into products
values
(1,1,"Dell",12000000,4,"Tốt","Mới"),
(2,2,"Sam sung",10000000,2,"Tốt","Mới"),
(3,4,"Ausus",7000000,6,"Tốt","Cũ"),
(4,3,"Dell",5000000,9,"Tốt","99%");

select * from products;
-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)

create unique index p_product_code on products(product_code);-- dữ liệu ko được trùng trong unique

-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)

create index p_product on products(product_name,product_price);

-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào

explain select * from products where product_name="Dell";

-- So sánh câu truy vấn trước và sau khi tạo index
explain select *
from products
where product_code = 2;

select *
from products
where product_code = 2;

-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.

create view p_view as
select product_code, product_name, product_price, product_status
from products;
select * from p_view;

-- Tiến hành sửa đổi view

update p_view 
set product_name="Apple"   where product_code =1;
select * from products;
-- Tiến hành xoá view
drop view p_view;

-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product

delimiter //
create procedure findAllProduct()
begin
  select * from products;
end //
delimiter ;
call findAllProduct;

-- Tạo store procedure thêm một sản phẩm mới

delimiter //
create procedure insert_product(
product_id int ,
product_code int,
product_name varchar(45),
product_price int,
product_amount int,
product_description varchar(50),
product_status varchar(50))
begin
  insert into products( product_id , product_code, product_name, product_price, product_amount, product_description,product_status)
values
   (product_id , product_code, product_name, product_price, product_amount, product_description,product_status);
end 
//delimiter ;
call  insert_product(5,7,"MSI",9000000,3,"Trầy xướt nhẹ","90%");

select *from products;

-- Tạo store procedure sửa thông tin sản phẩm theo id

delimiter //
create procedure sp_update_product (in p_id int ,in p_product_description varchar(50))
begin
update products set
product_description = p_product_description 
where product_id = p_id;
end //
delimiter ; 
call sp_update_product (1, "Mờ bàn phím");

select * from products;

-- Tạo store procedure xoá sản phẩm theo id

delimiter //
create procedure sp_delete (in p_id int)
begin
delete  from products
where product_id = p_id;
end //
delimiter ; 
call sp_delete (2);

select * from products;









