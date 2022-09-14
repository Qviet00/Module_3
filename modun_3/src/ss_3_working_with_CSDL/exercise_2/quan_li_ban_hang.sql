drop database if  exists quan_li_ban_hang;
create database  quan_li_ban_hang;
use quan_li_ban_hang;
create table customer(
customer_id int primary key auto_increment,
customer_name varchar(45),
customer_age int);
create table orders(
orders_id int primary key auto_increment,
customer_id int,
foreign key (customer_id) references customer(customer_id),
orders_date date,
orders_total_price int);
create table product(
product_id int primary key auto_increment,
product_name varchar(45),
product_price int);
create table order_detail(
orders_id int,
foreign key (orders_id) references orders(orders_id),
product_id int,
foreign key (product_id) references product(product_id),
orders_quantity int);
 
