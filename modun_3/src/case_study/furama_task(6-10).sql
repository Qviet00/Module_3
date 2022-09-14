use furama;

-- Task_6

select 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.chi_phi_thue,
    ldv.ten_loai_dich_vu
from dich_vu dv
	join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
	join hop_dong hd on hd.ma_dich_vu = dv.ma_dich_vu
where dv.ma_dich_vu not in (select dv.ma_dich_vu
    from dich_vu dv
	join hop_dong hd on hd.ma_dich_vu = dv.ma_dich_vu
where
((month(hd.ngay_lam_hop_dong) between 1 and 3)
and year(hd.ngay_lam_hop_dong) = '2021')
group by dv.ten_dich_vu)
group by dv.ten_dich_vu
order by dv.dien_tich desc;

-- Task7

select 
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tich,
    dv.so_nguoi_toi_da,
    dv.chi_phi_thue,
    ldv.ten_loai_dich_vu
from dich_vu dv
	join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
	join hop_dong hd on hd.ma_dich_vu = dv.ma_dich_vu
where dv.ma_dich_vu not in (select dv.ma_dich_vu
	from dich_vu dv
	join hop_dong hd ON hd.ma_dich_vu = dv.ma_dich_vu
	where (hd.ngay_lam_hop_dong) between '2021-01-01' and '2021-12-31'
	group by dv.ten_dich_vu)
	and year(hd.ngay_lam_hop_dong) = '2020'
group by dv.ten_dich_vu;

-- Task_8

select khach_hang.ho_ten
from khach_hang
group by khach_hang.ho_ten > 1;

-- Task_9

select
    month(hop_dong.ngay_lam_hop_dong) thang,
    count(hop_dong.ngay_lam_hop_dong) so_luong_khach_hang
from hop_dong
where year(hop_dong.ngay_lam_hop_dong) = '2021'
group by month(hop_dong.ngay_lam_hop_dong)
order by thang;

-- Task_10

select
    hop_dong.ma_hop_dong,
    hop_dong.ngay_lam_hop_dong,
    hop_dong.ngay_ket_thuc,
    hop_dong.tien_dat_coc,
    sum(ifnull(hop_dong_chi_tiet.so_luong, 0)) so_luong_dich_vu_di_kem
from hop_dong
	left join hop_dong_chi_tiet on hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
group by hop_dong.ma_hop_dong;
