drop database if exists quan_li_tro;
create database quan_li_tro;
use quan_li_tro;
create table kieu_thue(
id int primary key auto_increment,
hinh_thuc_thue varchar(225));
create table phong_tro(
id int primary key auto_increment,
tên_nguoi_thue varchar(45),
so_dien_thoai varchar(45),
ngay_bat_dau date,
ngay_ket_thuc date,
id_kieu_thue int,
foreign key (id_kieu_thue) references kieu_thue(id));
insert into kieu_thue(hinh_thuc_thue)
value ("Theo tháng"),("Theo quý"),("Theoo năm");
insert into phong_tro(tên_nguoi_thue,so_dien_thoai,ngay_bat_dau,ngay_ket_thuc)
value
("Nguyễn văn a","0905789676",2022-01-01,2023-01-06),
("Nguyễn văn b","0905789677",2022-01-02,2023-01-05),
("Nguyễn văn c","0905789678",2022-01-03,2023-01-04),
("Nguyễn văn d","0905789679",2022-01-04,2023-01-03),
("Nguyễn văn e","0905789671",2022-01-05,2023-01-02),
("Nguyễn văn f","0905789672",2022-01-06,2023-01-01);

