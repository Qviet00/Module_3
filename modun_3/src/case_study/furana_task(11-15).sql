use furama;

-- Task_11

SELECT 
    dvdk.*, kh.dia_chi, lk.ten_loai_khach
FROM
    dich_vu_di_kem dvdk
        JOIN
    hop_dong_chi_tiet hdct ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
        JOIN
    hop_dong hd ON hdct.ma_hop_dong = hd.ma_hop_dong
        JOIN
    khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
        JOIN
    loai_khach lk ON kh.ma_loai_khach = lk.ma_loai_khach
WHERE
    (lk.ten_loai_khach = 'Diamond')
        AND (kh.dia_chi LIKE '% Vinh'
        OR kh.dia_chi LIKE '% Quảng Ngãi');

-- Task_12

SELECT 
    hd.ma_hop_dong,
    nv.ho_ten AS ho_ten_nhan_vien,
    kh.ho_ten AS ho_ten_khach_hang,
    kh.so_dien_thoai,
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    SUM(hdct.so_luong) AS so_luong_dich_vu_di_kem,
    hd.tien_dat_coc
FROM
    hop_dong hd
        JOIN
    khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
        LEFT JOIN
    nhan_vien nv ON nv.ma_nhan_vien = hd.ma_nhan_vien
        LEFT JOIN
    dich_vu dv ON dv.ma_dich_vu = hd.ma_dich_vu
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
WHERE
    YEAR(ngay_lam_hop_dong) = '2020'
        AND QUARTER(ngay_lam_hop_dong) = 4
        AND hd.ma_hop_dong NOT IN (YEAR(ngay_lam_hop_dong) = '2021'
        AND MONTH(ngay_lam_hop_dong) BETWEEN 1 AND 6)
GROUP BY hd.ma_hop_dong;
 
-- Task_13

SELECT 
    dvdk.ma_dich_vu_di_kem,
    dvdk.ten_dich_vu_di_kem,
    SUM(hdct.so_luong) so_lan_su_dung
FROM
    dich_vu_di_kem dvdk
        JOIN
    hop_dong_chi_tiet hdct ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
GROUP BY hdct.ma_dich_vu_di_kem
HAVING so_lan_su_dung >= ALL (SELECT 
        SUM(hdct.so_luong)
    FROM
        dich_vu_di_kem dvdk
            JOIN
        hop_dong_chi_tiet hdct ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
    GROUP BY hdct.ma_dich_vu_di_kem);
          
-- Task_14

SELECT 
    hd.ma_hop_dong,
    ldv.ten_loai_dich_vu,
    dvdk.ten_dich_vu_di_kem,
    COUNT(dvdk.ma_dich_vu_di_kem) AS so_lan_su_dung
FROM
    hop_dong hd
        JOIN
    hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
        JOIN
    dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
        JOIN
    dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        JOIN
    loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
GROUP BY dvdk.ma_dich_vu_di_kem
HAVING so_lan_su_dung <= 1
ORDER BY hd.ma_hop_dong;
 
-- Task_15

SELECT 
    nv.ma_nhan_vien,
    nv.ho_ten,
    td.ten_trinh_do,
    bp.ten_bo_phan,
    nv.so_dien_thoai,
    nv.dia_chi,
    COUNT(hd.ma_nhan_vien) AS so_hop_dong_da_lap
FROM
    nhan_vien nv
        JOIN
    trinh_do td ON td.ma_trinh_do = nv.ma_trinh_do
        JOIN
    bo_phan bp ON bp.ma_bo_phan = nv.ma_bo_phan
        JOIN
    hop_dong hd ON hd.ma_nhan_vien = nv.ma_nhan_vien
WHERE
    YEAR(hd.ngay_lam_hop_dong) BETWEEN 2020 AND 2021
GROUP BY nv.ma_nhan_vien
HAVING so_hop_dong_da_lap <= 3
ORDER BY hd.ma_nhan_vien;


          