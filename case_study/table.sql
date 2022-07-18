drop database if exists furama_management;
create database furama_management;
use furama_management;
CREATE TABLE nhan_vien (
    ma_nhan_vien INT PRIMARY KEY,
    ho_ten VARCHAR(45),
    ngay_sinh DATE,
    so_cmnd VARCHAR(45),
    luong DOUBLE,
    so_dien_thoai VARCHAR(45),
    email VARCHAR(45),
    dia_chi VARCHAR(45),
    ma_vi_tri INT,
    ma_trinh_do INT,
    ma_bo_phan INT
);

CREATE TABLE vi_tri (
    ma_vi_tri INT PRIMARY KEY,
    ten_vi_tri VARCHAR(45)
);

CREATE TABLE trinh_do (
    ma_trinh_do INT PRIMARY KEY,
    ten_trinh_do VARCHAR(45)
);

CREATE TABLE bo_phan (
    ma_bo_phan INT PRIMARY KEY,
    ten_bo_phan VARCHAR(45)
);

CREATE TABLE khach_hang (
    ma_khach_hang INT PRIMARY KEY,
    ma_loai_khach INT,
    ho_ten VARCHAR(45),
    ngay_sinh DATE,
    gioi_tinh BIT(1),
    so_cmnd VARCHAR(45),
    so_dien_thoai VARCHAR(45),
    email VARCHAR(45),
    dia_chi VARCHAR(45)
);

CREATE TABLE loai_khach (
    ma_loai_khach INT PRIMARY KEY,
    ten_loai_khach VARCHAR(45)
);

CREATE TABLE hop_dong (
    ma_hop_dong INT PRIMARY KEY,
    ngay_lam_hop_dong DATETIME,
    ngay_ket_thuc DATETIME,
    tien_dat_coc DOUBLE,
    ma_nhan_vien INT,
    ma_khach_hang INT,
    ma_dich_vu INT
);
CREATE TABLE hop_dong_chi_tiet (
    ma_hop_dong_chi_tiet INT PRIMARY KEY,
    ma_hop_dong INT,
    ma_dich_vu_di_kem INT,
    so_luong INT
);

CREATE TABLE dich_vu_di_kem (
    ma_dich_vu_di_kem INT PRIMARY KEY,
    ten_dich_vu_di_kem VARCHAR(45),
    gia DOUBLE,
    don_vi VARCHAR(10),
    trang_thai VARCHAR(45)
);

CREATE TABLE dich_vu (
    ma_dich_vu INT PRIMARY KEY,
    ten_dich_vu VARCHAR(45),
    dien_tich INT,
    chi_phi_thue DOUBLE,
    so_nguoi_toi_da INT,
    ma_kieu_thue INT,
    ma_loai_dich_vu INT,
    tieu_chuan_phong VARCHAR(45),
    mo_ta_tien_nghi_khac VARCHAR(45),
    dien_tich_ho_boi DOUBLE,
    so_tang INT,
    dich_vu_mien_phi_di_kem TEXT
);

CREATE TABLE loai_dich_vu (
    ma_loai_dich_vu INT PRIMARY KEY,
    ten_loai_dich_vu VARCHAR(45)
);

CREATE TABLE kieu_thue (
    ma_kieu_thue INT PRIMARY KEY,
    ten_kieu_thue VARCHAR(45)
);

alter table nhan_vien add foreign key(ma_vi_tri) references vi_tri(ma_vi_tri);
alter table nhan_vien add foreign key(ma_trinh_do) references trinh_do(ma_trinh_do);
alter table nhan_vien add foreign key(ma_bo_phan) references bo_phan(ma_bo_phan);
alter table khach_hang add foreign key(ma_loai_khach) references loai_khach(ma_loai_khach);
alter table hop_dong add foreign key(ma_nhan_vien) references nhan_vien(ma_nhan_vien);
alter table hop_dong add foreign key(ma_khach_hang) references khach_hang(ma_khach_hang);
alter table hop_dong add foreign key(ma_dich_vu) references dich_vu(ma_dich_vu);
alter table dich_vu add foreign key(ma_loai_dich_vu) references loai_dich_vu(ma_loai_dich_vu);
alter table dich_vu add foreign key(ma_kieu_thue) references kieu_thue(ma_kieu_thue);
alter table hop_dong_chi_tiet add foreign key(ma_hop_dong) references hop_dong(ma_hop_dong);
alter table hop_dong_chi_tiet add foreign key(ma_dich_vu_di_kem) references dich_vu_di_kem(ma_dich_vu_di_kem);

insert into vi_tri(ma_vi_tri,ten_vi_tri)
value("1","Quản lí"),("2","Nhân viên");

INSERT INTO  bo_phan (ma_bo_phan, ten_bo_phan) 
VALUES ('1', 'Sale-Marketing'),
 ('2', 'Hành chính'),
 ('3', 'Phục vụ'),
 ('4', 'Quản lý');


INSERT INTO furama_management.trinh_do (ma_trinh_do, ten_trinh_do)
VALUES('1', 'Trung Cấp'),
('2', 'Cao Đẳng'),
('3', 'Đại Học'),
('4', 'Sau Đại Học');

INSERT INTO furama_management.nhan_vien (ma_nhan_vien, ho_ten, ngay_sinh, so_cmnd, luong, so_dien_thoai, email, dia_chi, ma_vi_tri, ma_trinh_do, ma_bo_phan)
 VALUES  ('1', 'Nguyễn Văn An', '1970-11-07', '456231786', '10000000', '0901234121', 'annguyen@gmail.com', '295 Nguyễn Tất Thành, Đà Nẵng', '1', '3', '1'),
 ('2', 'Lê Văn Bình', '1997-04-09', '654231234', '7000000', '0934212314', 'binhlv@gmail.com', '22 Yên Bái, Đà Nẵng', '1', '2', '2'),
 ('3', 'Hồ Thị Yến', '1995-12-12', '999231723', '14000000', '0412352315', 'thiyen@gmail.com', 'K234/11 Điện Biên Phủ, Gia Lai', '1', '3', '2'),
 ('4', 'Võ Công Toản', '1980-04-04', '123231365', '17000000', '0374443232', 'toan0404@gmail.com', '77 Hoàng Diệu, Quảng Trị', '1', '4', '4'),
 ('5', 'Nguyễn Bỉnh Phát', '1999-12-09', '454363232', '6000000', '0902341231', 'phatphat@gmail.com', '43 Yên Bái, Đà Nẵng', '2', '1', '1'),
 ('6', 'Khúc Nguyễn An Nghi', '2000-11-08', '964542311', '7000000', '0978653213', 'annghi20@gmail.com', '294 Nguyễn Tất Thành, Đà Nẵng', '2', '2', '3'),
 ('7', 'Nguyễn Hữu Hà', '1993-01-01', '534323231', '8000000', '0941234553', 'nhh0101@gmail.com', '4 Nguyễn Chí Thanh, Huế', '2', '3', '2'),
 ('8', 'Nguyễn Hà Đông', '1989-09-03', '234414123', '9000000', '0642123111', 'donghanguyen@gmail.com', '111 Hùng Vương, Hà Nội', '2', '4', '4'),
 ('9', 'Tòng Hoang', '1982-09-03', '256781231', '6000000', '0245144444', 'hoangtong@gmail.com', '213 Hàm Nghi, Đà Nẵng', '2', '4', '4'),
 ('10', 'Nguyễn Công Đạo', '1994-01-08', '755434343', '8000000', '0988767111', 'nguyencongdao12@gmail.com', '6 Hoà Khánh, Đồng Nai', '2', '3', '2');



 
 INSERT INTO loai_khach (ma_loai_khach, ten_loai_khach)
 VALUES ('1', 'Diamond'),
 ('2', 'Platinium'),
 ('3', 'Gold'),
 ('4', 'Silver'),
 ('5', 'Member');
 
 INSERT INTO furama_management.khach_hang (ma_khach_hang, ma_loai_khach, ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email, dia_chi)
 VALUES ('1', '5', 'Nguyễn Thị Hào', '1970-11-07', 0, '643431213', '0945423362', 'thihao07@gmail.com', '23 Nguyễn Hoàng, Đà Nẵng'),
 ('2', '3', 'Phạm Xuân Diệu', '1992-08-08', 1, '865342123', '0954333333', 'xuandieu92@gmail.com', 'K77/22 Thái Phiên, Quảng Trị'),
 ('3', '1', 'Trương Đình Nghệ', '1990-02-27', 1, '488645199', '0373213122', 'nghenhan2702@gmail.com', 'K323/12 Ông Ích Khiêm, Vinh'),
 ('4', '1', 'Dương Văn Quan', '1981-07-08', 1, '543432111', '0490039241', 'duongquan@gmail.com', 'K453/12 Lê Lợi, Đà Nẵng'),
 ('5', '4', 'Hoàng Trần Nhi Nhi', '1995-12-09', 0, '795453345', '0312345678', 'nhinhi123@gmail.com', '224 Lý Thái Tổ, Gia Lai'),
 ('6', '4', 'Tôn Nữ Mộc Châu', '2005-12-06', 0, '732434215', '0988888844', 'tonnuchau@gmail.com', '37 Yên Thế, Đà Nẵng'),
 ('7', '1', 'Nguyễn Mỹ Kim', '1984-04-08', 0, '856453123', '0912345698', 'kimcuong84@gmail.com', 'K123/45 Lê Lợi, Hồ Chí Minh'),
 ('8', '3', 'Nguyễn Thị Hào', '1999-04-08', 0, '965656433', '0763212345', 'haohao99@gmail.com', '55 Nguyễn Văn Linh, Kon Tum'),
 ('9', '1', 'Trần Đại Danh', '1994-07-01', 1, '432341235', '0643343433', 'danhhai99@gmail.com', '24 Lý Thường Kiệt, Quảng Ngãi'),
 ('10', '2', 'Nguyễn Tâm Đắc', '1989-07-01', 1, '344343432', '0987654321', 'dactam@gmail.com', '22 Ngô Quyền, Đà Nẵng');
 
 INSERT INTO furama_management.kieu_thue (ma_kieu_thue, ten_kieu_thue)
 VALUES ('1', 'year'),
 ('2', 'month'),
 ('3', 'day'),
 ('4', 'hour');

INSERT INTO furama_management.loai_dich_vu (ma_loai_dich_vu, ten_loai_dich_vu) 
VALUES ('1', 'Villa'),
('2', 'House'),
('3', 'Room');

INSERT INTO furama_management.dich_vu (ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, so_nguoi_toi_da, ma_kieu_thue, ma_loai_dich_vu, tieu_chuan_phong, mo_ta_tien_nghi_khac, dien_tich_ho_boi, so_tang, dich_vu_mien_phi_di_kem) 
VALUES ('1', 'Villa Beach Front', '25000', '1000000', '10', '3', '1', 'vip', 'Có hồ bơi', '500', '4', null),
 ('2', 'House Princess 01', '14000', '5000000', '7', '2', '2', 'vip', 'Có thêm bếp nướng', null, '3', null),
 ('3', 'Room Twin 01', '5000', '1000000', '2', '4', '3', 'normal', 'Có tivi', null, null, '1 Xe máy, 1 Xe đạp'),
 ('4', 'Villa No Beach Front', '22000', '9000000', '8', '3', '1', 'normal', 'Có hồ bơi', '300', '3', null),
 ('5', 'House Princess 02', '10000', '4000000', '5', '3', '2', 'normal', 'Có thêm bếp nướng', null, '2', null),
 ('6', 'Room Twin 02', '3000', '900000', '2', '4', '3', 'normal', 'Có tivi', null, null, '1 Xe máy');

INSERT INTO furama_management.dich_vu_di_kem (ma_dich_vu_di_kem, ten_dich_vu_di_kem, gia, don_vi, trang_thai) 
VALUES ('1', 'Karaoke', '10000', 'giờ', 'tiện nghi, hiện tại'),
 ('2', 'Thuê xe máy', '10000', 'chiếc', 'hỏng 1 xe'),
 ('3', 'Thuê xe đạp', '20000', 'chiếc', 'tốt'),
 ('4', 'Buffet buổi sáng', '15000', 'suất', 'đầy đủ đồ ăn, tráng miệng'),
 ('5', 'Buffet buổi trưa', '90000', 'suất', 'đầy đủ đồ ăn, tráng miệng'),
 ('6', 'Buffet buổi tối', '16000', 'suất', 'đầy đủ đồ ăn, tráng miệng');

INSERT INTO furama_management.hop_dong (ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu)
 VALUES ('1', '2020-12-08', '2020-12-08', '0', '3', '1', '3'),
 ('2', '2020-07-14', '2020-07-21', '200000', '7', '3', '1'),
 ('3', '2021-03-15', '2021-03-17', '50000', '3', '4', '2'),
 ('4', '2021-01-14', '2021-01-18', '100000', '7', '5', '5'),
 ('5', '2021-07-14', '2021-07-15', '0', '7', '2', '6'),
 ('6', '2021-06-01', '2021-06-03', '0', '7', '7', '6'),
 ('7', '2021-09-02', '2021-09-05', '100000', '7', '4', '4'),
 ('8', '2021-06-17', '2021-06-18', '150000', '3', '4', '1'),
 ('9', '2020-11-19', '2020-11-19', '0', '3', '4', '3'),
 ('10', '2021-04-12', '2021-04-14', '0', '10', '3', '5'),
 ('11', '2021-04-25', '2021-04-25', '0', '2', '2', '1'),
 ('12', '2021-05-25', '2021-05-27', '0', '7', '10', '1');
 
INSERT INTO furama_management.hop_dong_chi_tiet (ma_hop_dong_chi_tiet, ma_hop_dong, ma_dich_vu_di_kem, so_luong)
 VALUES ('1', '2', '4', '5'),
('2', '2', '5', '8'),
('3', '2', '6', '15'),
('4', '3', '1', '1'),
('5', '3', '2', '11'),
('6', '1', '3', '1'),
('7', '1', '2', '2'),
('8', '12', '2', '2');	
 
 -- cau 2 -----------------
 select * from nhan_vien where(ho_ten regexp "^[kht]") and (char_length(ho_ten)<+15);
 
 -- cau 3 ------------
 select * from khach_hang where(dia_chi like "%Đà Nẵng" or "%Quảng Trị") 
 and ((timestampdiff(year,ngay_sinh,curdate())>=18) 
 and (timestampdiff(year,ngay_sinh,curdate())<=50));
 -- câu 4
 select k.ho_ten, l.ten_loai_khach,count(h.ma_khach_hang) as so_luong
 from khach_hang k
 join loai_khach l on k.ma_loai_khach = l.ma_loai_khach
join hop_dong h on k.ma_khach_hang = h.ma_khach_hang
 where l.ten_loai_khach = "diamond"
 group by h.ma_khach_hang
 order by so_luong;
 
 -- câu 5
 select
 k.ma_khach_hang,
 k.ho_ten,
 l.ten_loai_khach,
 h.ma_hop_dong,
 d.ten_dich_vu,
 h.ngay_lam_hop_dong,
(d.chi_phi_thue + IFNULL(ct.so_luong * dv.gia, 0)) AS tong_tien
 
 from khach_hang k
 left join loai_khach l on k.ma_loai_khach = l.ma_loai_khach
 left join hop_dong h on k.ma_khach_hang = h.ma_khach_hang
 left join dich_vu d on h.ma_dich_vu =d.ma_dich_vu
 left join hop_dong_chi_tiet ct on h.ma_hop_dong = ct.ma_hop_dong
 left join dich_vu_di_kem dv on ct.ma_dich_vu_di_kem = dv.ma_dich_vu_di_kem
 group by h.ma_hop_dong,k.ma_khach_hang
 order by k.ma_khach_hang;
 
 -- câu 6
 select 
 dv.ma_dich_vu,
 dv.ten_dich_vu,
 dv.dien_tich,
 dv.chi_phi_thue,
 ldv.ten_loai_dich_vu
 
 from dich_vu dv
 left join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
 left join hop_dong hd on dv.ma_dich_vu = hd.ma_dich_vu
 where hd.ma_dich_vu not in(
 select hd.ma_dich_vu
 from hop_dong
 where 
 ((hd.ngay_lam_hop_dong between "2021-01-01" and "2021-03-31")
 or
 (hd.ngay_ket_thuc between "2021-01-01" and "2021-03-31"))
 )
 group by hd.ma_dich_vu;
 
-- câu 7
SELECT 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.so_nguoi_toi_da,
    dv.chi_phi_thue,
    ldv.ten_loai_dich_vu
FROM
    dich_vu dv
        JOIN
    hop_dong hd ON dv.ma_dich_vu = hd.ma_dich_vu
        JOIN
    loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
WHERE
    dv.ma_dich_vu IN (SELECT 
            hd.ma_dich_vu
        FROM
            hop_dong hd
        WHERE
            YEAR(hd.ngay_lam_hop_dong) = '2020'
                OR YEAR(hd.ngay_ket_thuc) = '2020')
        AND dv.ma_dich_vu NOT IN (SELECT 
            hd.ma_dich_vu
        FROM
            hop_dong hd
        WHERE
            YEAR(hd.ngay_lam_hop_dong) = '2021'
                OR YEAR(hd.ngay_ket_thuc) = '2021')
GROUP BY dv.ma_dich_vu;

-- câu 8
SELECT DISTINCT
    khach_hang.ho_ten
FROM
    khach_hang;

-- câu 9
SELECT 
    month(h.ngay_lam_hop_dong) as thang,
    COUNT(h.ma_khach_hang) AS so_luong
FROM
    khach_hang k
        JOIN
    loai_khach l ON k.ma_loai_khach = l.ma_loai_khach
        JOIN
    hop_dong h ON k.ma_khach_hang = h.ma_khach_hang
WHERE
    YEAR(h.ngay_lam_hop_dong)
        AND YEAR(h.ngay_ket_thuc) = '2021'
GROUP BY month(h.ngay_lam_hop_dong)
ORDER BY h.ngay_lam_hop_dong;
 
-- câu 10
select
 hd.ma_hop_dong , 
 hd.ngay_lam_hop_dong,
 hd.ngay_ket_thuc,
 hd.tien_dat_coc,
 sum(hdct.so_luong) as so_luong
 
 from hop_dong hd
 left join
 hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
 left join
 dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
 group by hd.ngay_lam_hop_dong;
 
 -- câu 11
SELECT 
    dvdk.ten_dich_vu_di_kem,
    dvdk.ma_dich_vu_di_kem

FROM
    hop_dong hd
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
        LEFT JOIN
    khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
        LEFT JOIN
    loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach
WHERE lk.ten_loai_khach = 'Diamond' and
    (kh.dia_chi LIKE '%Vinh'
        OR kh.dia_chi LIKE '%Quảng Ngãi');
        

-- câu 12
select 
hd.ma_hop_dong,
nv.ho_ten as ten_nhan_vien,
kh.ho_ten ten_khach_hang ,
kh.so_dien_thoai,
ifnull(dv.ten_dich_vu,0) as ten_dich_vu,
sum(hdct.so_luong) as so_luong,
hd.tien_dat_coc
 
 from
 hop_dong hd
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
        LEFT JOIN
    khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
        LEFT JOIN
    loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach 
		LEFT JOIN
	dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
		LEFT JOIN
	nhan_vien nv on hd.ma_nhan_vien = nv.ma_nhan_vien

    where 
 (hd.ngay_lam_hop_dong between "2020-10-01" and "2020-12-31")
 and 
 hd.ngay_lam_hop_dong
 not in (
 select hop_dong.ngay_lam_hop_dong from 
 hop_dong
 where hop_dong.ngay_lam_hop_dong between "2021-01-01" and "2021-06-30")
 group by hd.ma_hop_dong;


-- 13.	Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng.
-- (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
    select dvdk.*,hdct.so_luong
    
  
FROM
    hop_dong hd
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
        LEFT JOIN
    khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
        LEFT JOIN
    loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach
    
    where 
    
    
 
 

 
