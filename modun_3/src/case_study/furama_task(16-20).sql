use furama;

-- Task_16

delete from nhan_vien nv
where not exists (select hd.ma_nhan_vien
                       from hop_dong hd
					   where nv.ma_nhan_vien=hd.ma_nhan_vien and
					   year(hd.ngay_lam_hop_dong)between 2019 and 2021
                       group by nv.ma_nhan_vien);
select nv.ho_ten,nv.ma_nhan_vien from nhan_vien nv;
 
-- Task_17

select 
    kh.ma_khach_hang,
    kh.ho_ten,
    lk.ten_loai_khach
from khach_hang kh
	left join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach 
	left join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
	left join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
	left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
	left join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
where lk.ten_loai_khach ='Platinium' and year(hd.ngay_lam_hop_dong) = '2021'
group by kh.ma_loai_khach
having sum((ifnull(hdct.so_luong * dvdk.gia, 0)) + chi_phi_thue) > 1000000;

-- Task_ 18

select distinct k.ma_khach_hang, k.ho_ten
	FROM khach_hang k
        left join loai_khach lk ON k.ma_loai_khach = lk.ma_loai_khach
        left join hop_dong hd ON hd.ma_khach_hang = k.ma_khach_hang
        left join dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
        left join hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
        left join dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
where year(hd.ngay_lam_hop_dong) < '2021';
 
-- Task_19

select 
    dvdk.ma_dich_vu_di_kem,
    dvdk.ten_dich_vu_di_kem,
    sum(hdct.so_luong) AS tong_so
from hop_dong hd
	join hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
	join dich_vu_di_kem dvdk ON hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
where year(hd.ngay_lam_hop_dong) = '2020'
group by dvdk.ma_dich_vu_di_kem
having tong_so > 10;

-- Task_20

select 
    kh.ma_khach_hang as id,
    kh.ho_ten,
    kh.email,
    kh.so_dien_thoai,
    kh.ngay_sinh,
    kh.dia_chi
from khach_hang kh 
union all
select
    nv.ma_nhan_vien,
    nv.ho_ten,
    nv.email,
    nv.so_dien_thoai,
    nv.ngay_sinh,
    nv.dia_chi
from nhan_vien nv;




