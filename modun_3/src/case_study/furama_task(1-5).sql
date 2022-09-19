use furama;

-- Task 2
SELECT 
    *
FROM
    nhan_vien nv
WHERE
    (nv.ho_ten REGEXP '^[HKT]')
        AND (CHAR_LENGTH(nv.ho_ten) <= 15);
	
-- Task 3
SELECT 
    *
FROM
    khach_hang kh
WHERE
    (kh.dia_chi LIKE '% Quảng Trị'
        OR kh.dia_chi LIKE '% Đà Nẵng')
        AND (YEAR(NOW()) - YEAR(ngay_sinh) BETWEEN 18 AND 50);
        
-- Task 4
SELECT 
    kh.ma_khach_hang,
    ho_ten,
    COUNT(hd.ma_khach_hang) AS so_lan_dat_phong
FROM
    khach_hang kh
        INNER JOIN
    loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach
        INNER JOIN
    hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
WHERE
    lk.ten_loai_khach = 'Diamond'
GROUP BY ho_ten
ORDER BY so_lan_dat_phong;

-- Task 5
SELECT 
    kh.ma_khach_hang,
    kh.ho_ten,
    lk.ten_loai_khach,
    hd.ma_hop_dong,
    dv.ten_dich_vu,
    hd.ngay_lam_hop_dong,
    hd.ngay_ket_thuc,
    SUM((IFNULL(hdct.so_luong * dvdk.gia, 0)) + (chi_phi_thue)) tong_tien
FROM
    khach_hang kh
        LEFT JOIN
    loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach
        LEFT JOIN
    hop_dong hd ON hd.ma_khach_hang = kh.ma_khach_hang
        LEFT JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY hd.ma_hop_dong
ORDER BY kh.ma_khach_hang;


