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
value("1","Qu???n l??"),("2","Nh??n vi??n");

INSERT INTO  bo_phan (ma_bo_phan, ten_bo_phan) 
VALUES ('1', 'Sale-Marketing'),
 ('2', 'H??nh ch??nh'),
 ('3', 'Ph???c v???'),
 ('4', 'Qu???n l??');


INSERT INTO furama_management.trinh_do (ma_trinh_do, ten_trinh_do)
VALUES('1', 'Trung C???p'),
('2', 'Cao ?????ng'),
('3', '?????i H???c'),
('4', 'Sau ?????i H???c');

INSERT INTO furama_management.nhan_vien (ma_nhan_vien, ho_ten, ngay_sinh, so_cmnd, luong, so_dien_thoai, email, dia_chi, ma_vi_tri, ma_trinh_do, ma_bo_phan)
 VALUES  ('1', 'Nguy???n V??n An', '1970-11-07', '456231786', '10000000', '0901234121', 'annguyen@gmail.com', '295 Nguy???n T???t Th??nh, ???? N???ng', '1', '3', '1'),
 ('2', 'L?? V??n B??nh', '1997-04-09', '654231234', '7000000', '0934212314', 'binhlv@gmail.com', '22 Y??n B??i, ???? N???ng', '1', '2', '2'),
 ('3', 'H??? Th??? Y???n', '1995-12-12', '999231723', '14000000', '0412352315', 'thiyen@gmail.com', 'K234/11 ??i???n Bi??n Ph???, Gia Lai', '1', '3', '2'),
 ('4', 'V?? C??ng To???n', '1980-04-04', '123231365', '17000000', '0374443232', 'toan0404@gmail.com', '77 Ho??ng Di???u, Qu???ng Tr???', '1', '4', '4'),
 ('5', 'Nguy???n B???nh Ph??t', '1999-12-09', '454363232', '6000000', '0902341231', 'phatphat@gmail.com', '43 Y??n B??i, ???? N???ng', '2', '1', '1'),
 ('6', 'Kh??c Nguy???n An Nghi', '2000-11-08', '964542311', '7000000', '0978653213', 'annghi20@gmail.com', '294 Nguy???n T???t Th??nh, ???? N???ng', '2', '2', '3'),
 ('7', 'Nguy???n H???u H??', '1993-01-01', '534323231', '8000000', '0941234553', 'nhh0101@gmail.com', '4 Nguy???n Ch?? Thanh, Hu???', '2', '3', '2'),
 ('8', 'Nguy???n H?? ????ng', '1989-09-03', '234414123', '9000000', '0642123111', 'donghanguyen@gmail.com', '111 H??ng V????ng, H?? N???i', '2', '4', '4'),
 ('9', 'T??ng Hoang', '1982-09-03', '256781231', '6000000', '0245144444', 'hoangtong@gmail.com', '213 H??m Nghi, ???? N???ng', '2', '4', '4'),
 ('10', 'Nguy???n C??ng ?????o', '1994-01-08', '755434343', '8000000', '0988767111', 'nguyencongdao12@gmail.com', '6 Ho?? Kh??nh, ?????ng Nai', '2', '3', '2');



 
 INSERT INTO loai_khach (ma_loai_khach, ten_loai_khach)
 VALUES ('1', 'Diamond'),
 ('2', 'Platinium'),
 ('3', 'Gold'),
 ('4', 'Silver'),
 ('5', 'Member');
 
 INSERT INTO furama_management.khach_hang (ma_khach_hang, ma_loai_khach, ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email, dia_chi)
 VALUES ('1', '5', 'Nguy???n Th??? H??o', '1970-11-07', 0, '643431213', '0945423362', 'thihao07@gmail.com', '23 Nguy???n Ho??ng, ???? N???ng'),
 ('2', '3', 'Ph???m Xu??n Di???u', '1992-08-08', 1, '865342123', '0954333333', 'xuandieu92@gmail.com', 'K77/22 Th??i Phi??n, Qu???ng Tr???'),
 ('3', '1', 'Tr????ng ????nh Ngh???', '1990-02-27', 1, '488645199', '0373213122', 'nghenhan2702@gmail.com', 'K323/12 ??ng ??ch Khi??m, Vinh'),
 ('4', '1', 'D????ng V??n Quan', '1981-07-08', 1, '543432111', '0490039241', 'duongquan@gmail.com', 'K453/12 L?? L???i, ???? N???ng'),
 ('5', '4', 'Ho??ng Tr???n Nhi Nhi', '1995-12-09', 0, '795453345', '0312345678', 'nhinhi123@gmail.com', '224 L?? Th??i T???, Gia Lai'),
 ('6', '4', 'T??n N??? M???c Ch??u', '2005-12-06', 0, '732434215', '0988888844', 'tonnuchau@gmail.com', '37 Y??n Th???, ???? N???ng'),
 ('7', '1', 'Nguy???n M??? Kim', '1984-04-08', 0, '856453123', '0912345698', 'kimcuong84@gmail.com', 'K123/45 L?? L???i, H??? Ch?? Minh'),
 ('8', '3', 'Nguy???n Th??? H??o', '1999-04-08', 0, '965656433', '0763212345', 'haohao99@gmail.com', '55 Nguy???n V??n Linh, Kon Tum'),
 ('9', '1', 'Tr???n ?????i Danh', '1994-07-01', 1, '432341235', '0643343433', 'danhhai99@gmail.com', '24 L?? Th?????ng Ki???t, Qu???ng Ng??i'),
 ('10', '2', 'Nguy???n T??m ?????c', '1989-07-01', 1, '344343432', '0987654321', 'dactam@gmail.com', '22 Ng?? Quy???n, ???? N???ng');
 
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
VALUES ('1', 'Villa Beach Front', '25000', '1000000', '10', '3', '1', 'vip', 'C?? h??? b??i', '500', '4', null),
 ('2', 'House Princess 01', '14000', '5000000', '7', '2', '2', 'vip', 'C?? th??m b???p n?????ng', null, '3', null),
 ('3', 'Room Twin 01', '5000', '1000000', '2', '4', '3', 'normal', 'C?? tivi', null, null, '1 Xe m??y, 1 Xe ?????p'),
 ('4', 'Villa No Beach Front', '22000', '9000000', '8', '3', '1', 'normal', 'C?? h??? b??i', '300', '3', null),
 ('5', 'House Princess 02', '10000', '4000000', '5', '3', '2', 'normal', 'C?? th??m b???p n?????ng', null, '2', null),
 ('6', 'Room Twin 02', '3000', '900000', '2', '4', '3', 'normal', 'C?? tivi', null, null, '1 Xe m??y');

INSERT INTO furama_management.dich_vu_di_kem (ma_dich_vu_di_kem, ten_dich_vu_di_kem, gia, don_vi, trang_thai) 
VALUES ('1', 'Karaoke', '10000', 'gi???', 'ti???n nghi, hi???n t???i'),
 ('2', 'Thu?? xe m??y', '10000', 'chi???c', 'h???ng 1 xe'),
 ('3', 'Thu?? xe ?????p', '20000', 'chi???c', 't???t'),
 ('4', 'Buffet bu???i s??ng', '15000', 'su???t', '?????y ????? ????? ??n, tr??ng mi???ng'),
 ('5', 'Buffet bu???i tr??a', '90000', 'su???t', '?????y ????? ????? ??n, tr??ng mi???ng'),
 ('6', 'Buffet bu???i t???i', '16000', 'su???t', '?????y ????? ????? ??n, tr??ng mi???ng');

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
 select * from khach_hang where(dia_chi like "%???? N???ng" or "%Qu???ng Tr???") 
 and ((timestampdiff(year,ngay_sinh,curdate())>=18) 
 and (timestampdiff(year,ngay_sinh,curdate())<=50));
 -- c??u 4
 select k.ho_ten, l.ten_loai_khach,count(h.ma_khach_hang) as so_luong
 from khach_hang k
 join loai_khach l on k.ma_loai_khach = l.ma_loai_khach
join hop_dong h on k.ma_khach_hang = h.ma_khach_hang
 where l.ten_loai_khach = "diamond"
 group by h.ma_khach_hang
 order by so_luong;
 
 -- c??u 5
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
 
 -- c??u 6
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
 
-- c??u 7
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

-- c??u 8
SELECT DISTINCT
    khach_hang.ho_ten
FROM
    khach_hang;

-- c??u 9
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
 
-- c??u 10
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
 
 -- c??u 11
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
        OR kh.dia_chi LIKE '%Qu???ng Ng??i');
        

-- c??u 12
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


-- 13.	Hi???n th??? th??ng tin c??c D???ch v??? ??i k??m ???????c s??? d???ng nhi???u nh???t b???i c??c Kh??ch h??ng ???? ?????t ph??ng.
-- (L??u ?? l?? c?? th??? c?? nhi???u d???ch v??? c?? s??? l???n s??? d???ng nhi???u nh?? nhau).
    select dvdk.*,
    hdct.so_luong
    
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
    where hdct.so_luong = (
    select max(so_luong)
    from hop_dong_chi_tiet)
    group by dvdk.ten_dich_vu_di_kem
    order by dvdk.ma_dich_vu_di_kem;
    
    -- c??u 14
	select 
    hd.ma_hop_dong,
    dv.ten_dich_vu,
    dvdk.ten_dich_vu_di_kem,
    count(dvdk.ma_dich_vu_di_kem)  as so_lan
 
FROM
    hop_dong hd
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
        LEFT JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
    group by dvdk.ma_dich_vu_di_kem
    having count(dvdk.ma_dich_vu_di_kem)=1;
    
    -- c??u 15
    select nv.*,
    count(nv.ma_nhan_vien) as so_hop_dong
    
    from
    nhan_vien nv
		LEFT JOIN
    hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
        LEFT JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
    group by hd.ma_nhan_vien
    having 
    count(nv.ma_nhan_vien)<=3;
		
	-- c??u 16
 SET sql_safe_updates = 0;
DELETE FROM nhan_vien 
WHERE
    ma_nhan_vien NOT IN (SELECT 
        ma_nhan_vien
    FROM
        hop_dong
    WHERE
        YEAR(ngay_lam_hop_dong) BETWEEN 2019 AND 2021); 
SET sql_safe_updates = 1;

-- c??u 17
SET sql_safe_updates =0;
UPDATE khach_hang 
SET 
    ma_loai_khach = 1
WHERE
    ma_khach_hang IN (SELECT 
            temp.ma_khach_hang
        FROM
            (SELECT 
                hd.ma_khach_hang,
                    (dv.chi_phi_thue + SUM(IFNULL(hdct.so_luong * dvdk.gia, 0))) AS tong_tien
            FROM
                khach_hang kh
            LEFT JOIN hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
            LEFT JOIN hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
            LEFT JOIN dich_vu_di_kem dvdk ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
            LEFT JOIN dich_vu dv ON dv.ma_dich_vu = hd.ma_dich_vu
            LEFT JOIN loai_khach lk ON lk.ma_loai_khach = kh.ma_loai_khach
            GROUP BY hd.ma_hop_dong , kh.ma_khach_hang
            HAVING tong_tien > 1000000) temp);
	
SET sql_safe_updates =1;

	-- c??u 18
    SET sql_safe_updates = 0;
SET FOREIGN_KEY_CHECKS=0;
DELETE FROM khach_hang 
WHERE
    ma_khach_hang IN (SELECT 
        ma_khach_hang
    FROM
        hop_dong hd
    
    WHERE
        YEAR(ngay_lam_hop_dong) < 2021);
	
    SET sql_safe_updates = 1;
    SET FOREIGN_KEY_CHECKS=1;
    
    -- c??u 19
 SET sql_safe_updates = 0;
 UPDATE dich_vu_di_kem 
 SET 
    gia = gia * 2
WHERE
    ma_dich_vu_di_kem IN (SELECT 
            ma_dich_vu_di_kem
        FROM
            hop_dong_chi_tiet hdct
                JOIN
            hop_dong hd ON hd.ma_hop_dong = hdct.ma_hop_dong
        WHERE
            YEAR(hd.ngay_lam_hop_dong) = 2020
        GROUP BY hdct.ma_dich_vu_di_kem
        HAVING SUM(hdct.so_luong) > 10);
SET sql_safe_updates = 1;

-- c??u 20 
SELECT 
    ma_nhan_vien ,
    ho_ten,
    email,
    so_dien_thoai,	
    ngay_sinh,
    dia_chi
FROM
    nhan_vien 
UNION SELECT 
    ma_khach_hang ,
    ho_ten,
    email,
    so_dien_thoai,
    ngay_sinh,
    dia_chi
FROM
    khach_hang;

     