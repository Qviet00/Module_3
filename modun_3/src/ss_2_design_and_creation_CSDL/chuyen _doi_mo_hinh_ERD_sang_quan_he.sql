create database if not exists mo_hinh_quan_he;
use mo_hinh_quan_he;
CREATE TABLE phieu_xuat (
    so_phieu_xuat INT PRIMARY KEY AUTO_INCREMENT,
    ngay_xuat DATE
);
CREATE TABLE vat_tu (
    ma_vat_tu INT PRIMARY KEY AUTO_INCREMENT,
    ten_vat_tu VARCHAR(45)
);
CREATE TABLE phieu_nhap (
    so_phieu_nhap INT PRIMARY KEY AUTO_INCREMENT,
    ngay_nhap DATE
);
CREATE TABLE don_dat_hang (
    so_dat_hang INT PRIMARY KEY AUTO_INCREMENT,
    ngay_dat_hang DATE
);
CREATE TABLE nha_cung_cap (
    ma_nha_cung_cap INT PRIMARY KEY AUTO_INCREMENT,
    ten_nha_cung_cap VARCHAR(45),
    dai_chi VARCHAR(45),
    so_dien_thoai DOUBLE
);
CREATE TABLE chi_tiet_phieu_nhap (
    don_gia_xuat DOUBLE,
    so_luong_xuat INT,
    so_phieu_xuat INT,
    ma_vat_tu INT,
    PRIMARY KEY (so_phieu_xuat , ma_vat_tu),
    FOREIGN KEY (so_phieu_xuat)
        REFERENCES phieu_xuat (so_phieu_xuat),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);
CREATE TABLE chi_tiet_phieu_xuat (
    don_gia_nhap DOUBLE,
    so_luong_nhap INT,
    so_phieu_nhap INT,
    ma_vat_tu INT,
    PRIMARY KEY (so_phieu_nhap , ma_vat_tu),
    FOREIGN KEY (so_phieu_nhap)
        REFERENCES phieu_nhap (so_phieu_nhap),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);
CREATE TABLE chi_tiet_dat_hang (
    so_dat_hang INT,
    ma_vat_tu INT,
    PRIMARY KEY (so_dat_hang , ma_vat_tu),
    FOREIGN KEY (so_dat_hang)
        REFERENCES don_dat_hang (so_dat_hang),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);
CREATE TABLE cung_cap (
    so_dat_hang INT,
    ma_nha_cung_cap INT,
    PRIMARY KEY (so_dat_hang , ma_nha_cung_cap),
    FOREIGN KEY (so_dat_hang)
        REFERENCES don_dat_hang (so_dat_hang),
    FOREIGN KEY (ma_nha_cung_cap)
        REFERENCES nha_cung_cap (ma_nha_cung_cap)
);

