use furama;

-- Task_16

delete from nhan_vien nv
where nv.ma_nhan_vien not in( select hd.ma_nhan_vien
                      from hop_dong hd where year(hd.ngay_lam_hop_dong) between 2019 and 2021);
 
-- Task_17

SELECT 
    kh.ma_khach_hang, kh.ho_ten, lk.ten_loai_khach
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
WHERE
    lk.ten_loai_khach = 'Platinium'
        AND YEAR(hd.ngay_lam_hop_dong) = '2021'
GROUP BY kh.ma_loai_khach
HAVING SUM((IFNULL(hdct.so_luong * dvdk.gia, 0)) + chi_phi_thue) > 1000000;

-- Task_ 18

SELECT DISTINCT
    k.ma_khach_hang, k.ho_ten
FROM
    khach_hang k
        LEFT JOIN
    loai_khach lk ON k.ma_loai_khach = lk.ma_loai_khach
        LEFT JOIN
    hop_dong hd ON hd.ma_khach_hang = k.ma_khach_hang
        LEFT JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
        LEFT JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
WHERE
    YEAR(hd.ngay_lam_hop_dong) < '2021';
 
-- Task_19

SELECT 
    dvdk.ma_dich_vu_di_kem,
    dvdk.ten_dich_vu_di_kem,
    SUM(hdct.so_luong) AS tong_so
FROM
    hop_dong hd
        JOIN
    hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
        JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
WHERE
    YEAR(hd.ngay_lam_hop_dong) = '2020'
GROUP BY dvdk.ma_dich_vu_di_kem
HAVING tong_so > 10;

-- Task_20

SELECT 
    kh.ma_khach_hang AS id,
    kh.ho_ten,
    kh.email,
    kh.so_dien_thoai,
    kh.ngay_sinh,
    kh.dia_chi
FROM
    khach_hang kh 
UNION ALL SELECT 
    nv.ma_nhan_vien,
    nv.ho_ten,
    nv.email,
    nv.so_dien_thoai,
    nv.ngay_sinh,
    nv.dia_chi
FROM
    nhan_vien nv;




