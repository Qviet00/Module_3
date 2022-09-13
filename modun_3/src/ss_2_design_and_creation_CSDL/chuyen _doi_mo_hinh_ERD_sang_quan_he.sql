create database if not exists mo_hinh_quan_he;
use mo_hinh_quan_he;
create table phieu_xuat(
so_phieu_xuat int primary key auto_increment,
ngay_xuat date);
create table vat_tu(
ma_vat_tu int primary key auto_increment,
ten_vat_tu varchar(45)
);
create table phieu_nhap(
so_phieu_nhap int primary key auto_increment,
ngay_nhap date
);
create table don_dat_hang(
so_dat_hang int primary key auto_increment,
ngay_dat_hang date
);
create table nha_cung_cap(
ma_nha_cung_cap int primary key auto_increment,
ten_nha_cung_cap varchar(45),
dai_chi varchar(45),
so_dien_thoai double 
);
create table chi_tiet_phieu_nhap(
don_gia_xuat double,
so_luong_xuat int,
so_phieu_xuat int,
ma_vat_tu int,
primary key(so_phieu_xuat,ma_vat_tu),
foreign key (so_phieu_xuat) references phieu_xuat(so_phieu_xuat),
foreign key (ma_vat_tu) references vat_tu(ma_vat_tu)
);
create table chi_tiet_phieu_xuat(
don_gia_nhap double,
so_luong_nhap int,
so_phieu_nhap int,
ma_vat_tu int,
primary key(so_phieu_nhap,ma_vat_tu),
foreign key (so_phieu_nhap) references phieu_nhap(so_phieu_nhap),
foreign key (ma_vat_tu) references vat_tu(ma_vat_tu)
);
create table chi_tiet_dat_hang(
so_dat_hang int,
ma_vat_tu int,
primary key(so_dat_hang, ma_vat_tu),
foreign key (so_dat_hang) references don_dat_hang(so_dat_hang),
foreign key (ma_vat_tu) references vat_tu(ma_vat_tu)
);
create table cung_cap(
so_dat_hang int,
ma_nha_cung_cap int,
primary key(so_dat_hang,ma_nha_cung_cap),
foreign key (so_dat_hang) references don_dat_hang(so_dat_hang),
foreign key (ma_nha_cung_cap) references nha_cung_cap(ma_nha_cung_cap)
);

