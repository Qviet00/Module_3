create database if not exists quan_li_ban_hang;
use quan_li_ban_hang;
create table customer(
cID int primary key auto_increment,
cName varchar(45),
cAge int);
create table orders(
oID int primary key auto_increment,
cID int,
foreign key (cID) references customer(cID),
oDate date,
oTotalprice int);
create table product(
pID int primary key auto_increment,
pName varchar(45),
pPrice int);
create table order_daitail(
oID int,
foreign key (oID) references orders(oID),
pID int,
foreign key (pID) references product(pID),
odQTY int);
 
