drop database if exists quan_li_don_hang;
create database quan_li_don_hang;
use quan_li_don_hang;

create table nha_cung_cap(
ma_nha_cung_cap int,
ten_nha_cung_cap varchar(55),
dia_chi varchar(55),
so_dien_thoai varchar(15) primary key
);

create table don_dat_hang(
so_dat_hang int,
ngay_dat_hang int,
ma_nha_cung_cap int,
foreign key(ma_nha_cung_cap) references

);
