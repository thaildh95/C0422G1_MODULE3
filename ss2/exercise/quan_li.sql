drop database if exists quan_li_don_hang;
create database quan_li_don_hang;
use quan_li_don_hang;

CREATE TABLE phieu_nhap (
    so_phieu_nhap INT PRIMARY KEY,
    ngay_nhap DATE
);

CREATE TABLE vat_tu (
    ma_vat_tu INT primary key,
    ten_vat_tu INT
);

CREATE TABLE phieu_nhap_chi_tiet (
    so_phieu_nhap INT,
    ma_vat_tu INT,
    PRIMARY KEY (so_phieu_nhap , ma_vat_tu),
    FOREIGN KEY (so_phieu_nhap)
        REFERENCES phieu_nhap (so_phieu_nhap),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);

CREATE TABLE nha_cung_cap (
    ma_nha_cung_cap int primary key,
    ten_nha_cung_cap VARCHAR(55),
    dia_chi VARCHAR(55),
    so_dien_thoai VARCHAR(15) 
);
CREATE TABLE don_dat_hang (
    so_dat_hang INT PRIMARY KEY,
    ngay_dat_hang INT,
    ma_nha_cung_cap INT,
    FOREIGN KEY (ma_nha_cung_cap)
        REFERENCES nha_cung_cap (ma_nha_cung_cap)
);
CREATE TABLE don_dat_hang_chi_tiet (
    so_dat_hang INT,
    ma_vat_tu INT,
    PRIMARY KEY (so_dat_hang , ma_vat_tu),
    FOREIGN KEY (so_dat_hang)
        REFERENCES don_dat_hang (so_dat_hang),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);

CREATE TABLE so_dien_thoai (
    so_dien_thoai VARCHAR(55),
    ma_nha_cung_cap INT,
    FOREIGN KEY (ma_nha_cung_cap)
        REFERENCES nha_cung_cap (ma_nha_cung_cap)
);

CREATE TABLE phieu_xuat (
    so_phieu_xuat INT PRIMARY KEY,
    ngay_xuat DATE
);

CREATE TABLE phieu_xuat_chi_tiet (
    so_phieu_xuat INT,
    ma_vat_tu INT,
    PRIMARY KEY (so_phieu_xuat , ma_vat_tu),
    FOREIGN KEY (so_phieu_xuat)
        REFERENCES phieu_xuat (so_phieu_xuat),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);