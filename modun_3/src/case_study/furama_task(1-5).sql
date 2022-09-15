use furama;

-- Task 2
select * from nhan_vien nv 
where (nv.ho_ten regexp '^[HKT]') and (char_length(nv.ho_ten) <= 15);
	
-- Task 3
select * from khach_hang kh
 where (kh.dia_chi like '% Quảng Trị' or kh.dia_chi like '% Đà Nẵng') 
	    and ((year(now()) - year(ngay_sinh) between 18 and 50));
        
-- Task 4
select kh.ma_khach_hang, ho_ten, count(hd.ma_khach_hang) as so_lan_dat_phong
from khach_hang kh
inner join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
inner join hop_dong hd on kh.ma_khach_hang = hd.ma_khach_hang
where lk.ten_loai_khach ="Diamond"
group by ho_ten
order by so_lan_dat_phong;

-- Task 5
select 
    kh.ma_khach_hang,
    kh.ho_ten,
    lk.ten_loai_khach,
    hd.ma_hop_dong,
    dv.ten_dich_vu,
    hd.ngay_lam_hop_dong,
    hd.ngay_ket_thuc,
    sum((ifnull(hdct.so_luong * dvdk.gia, 0)) + (chi_phi_thue)) tong_tien
from khach_hang kh
left join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
left join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
left join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
left join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
group by hd.ma_hop_dong
order by kh.ma_khach_hang;


