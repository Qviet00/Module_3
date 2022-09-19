use furama;

-- Task_6

SELECT 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.chi_phi_thue,
    ldv.ten_loai_dich_vu
FROM dich_vu dv
JOIN loai_dich_vu ldv ON ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
WHERE dv.ma_dich_vu NOT IN (SELECT hd.ma_dich_vu
							FROM hop_dong hd
							WHERE(QUARTER(hd.ngay_lam_hop_dong) = 1)
							AND (YEAR(hd.ngay_lam_hop_dong) = 2021));

-- Task7

SELECT 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.chi_phi_thue,
    ldv.ten_loai_dich_vu
FROM
    dich_vu dv
        JOIN
    loai_dich_vu ldv ON ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
WHERE
    dv.ma_dich_vu IN (SELECT 
            hd.ma_dich_vu
        FROM
            hop_dong hd
        WHERE
            YEAR(hd.ngay_lam_hop_dong) = 2020)
        AND dv.ma_dich_vu NOT IN (SELECT 
            hd.ma_dich_vu
        FROM
            hop_dong hd
        WHERE
            YEAR(hd.ngay_lam_hop_dong) = 2021);
-- Task_8
-- c1
SELECT DISTINCT
    ho_ten
FROM
    khach_hang;
    
    -- c2
    
SELECT 
    kh.ma_khach_hang, kh.ho_ten
FROM
    khach_hang kh
GROUP BY kh.ho_ten
HAVING kh.ho_ten <= 1;

-- C3
SELECT 
    kh.ho_ten a
FROM
    khach_hang kh 
UNION SELECT 
    kh.ho_ten b
FROM
    khach_hang kh;


-- Task_9

SELECT 
    MONTH(hd.ngay_lam_hop_dong) thang,
    COUNT(hd.ngay_lam_hop_dong) so_luong_khach_hang
FROM
    hop_dong hd
WHERE
    YEAR(hd.ngay_lam_hop_dong) = '2021'
GROUP BY MONTH(hd.ngay_lam_hop_dong)
ORDER BY thang;

-- Task_10

SELECT 
    hd.ma_hop_dong,
    hd.ngay_lam_hop_dong,
    hd.ngay_ket_thuc,
    hd.tien_dat_coc,
    SUM(IFNULL(hdct.so_luong, 0)) so_luong_dich_vu_di_kem
FROM
    hop_dong hd
        LEFT JOIN
    hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
GROUP BY hd.ma_hop_dong;
