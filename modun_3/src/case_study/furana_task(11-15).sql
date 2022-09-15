use furama;

-- Task_11

select dvdk.*,kh.dia_chi,lk.ten_loai_khach from dich_vu_di_kem dvdk
	join hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem=hdct.ma_dich_vu_di_kem
    join hop_dong hd on hdct.ma_hop_dong=hd.ma_hop_dong
	join khach_hang kh on hd.ma_khach_hang=kh.ma_khach_hang
    join loai_khach lk on kh.ma_loai_khach=lk.ma_loai_khach
where (lk.ten_loai_khach ="Diamond" ) and (kh.dia_chi like '% Vinh' or kh.dia_chi like '% Quảng Ngãi') ;

-- Task_12

select 
    hd.ma_hop_dong,
    nv.ho_ten as ho_ten_nhan_vien,
    kh.ho_ten as ho_ten_khach_hang,
    kh.so_dien_thoai,
    dv.ma_dich_vu,
    dv.ten_dich_vu,
    SUM(hdct.so_luong) as so_luong_dich_vu_di_kem,
    hd.tien_dat_coc
from hop_dong hd
		join khach_hang kh on hd.ma_khach_hang = kh.ma_khach_hang
        left join nhan_vien nv on nv.ma_nhan_vien = hd.ma_nhan_vien
        left join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
        left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
where year(ngay_lam_hop_dong) = "2020" and month(ngay_lam_hop_dong) between 9 and 12
	  and hd.ma_hop_dong not in (select hd.ma_hop_dong
				                 from hop_dong hd
				                 where year(ngay_lam_hop_dong)="2021" and month(ngay_lam_hop_dong) between 1 and 6
								 group by hd.ma_hop_dong )
group by hd.ma_hop_dong;
 
-- Task_13

select 
    dvdk.ma_dich_vu_di_kem,
    dvdk.ten_dich_vu_di_kem,
    sum(hdct.so_luong)  so_luong_dich_vu_di_kem
from dich_vu_di_kem dvdk
	join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
	join hop_dong hd on hdct.ma_hop_dong = hd.ma_hop_dong
group by dvdk.ma_dich_vu_di_kem
having so_luong_dich_vu_di_kem >=  (select max(hdct.so_luong) 
		  from dich_vu_di_kem
		  right join hop_dong_chi_tiet hdct on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
		  right join hop_dong  hd on hdct.ma_hop_dong = hd.ma_hop_dong);
          
-- Task_14

select 
hd.ma_hop_dong,
ldv.ten_loai_dich_vu,
dvdk.ten_dich_vu_di_kem,
count(dvdk.ma_dich_vu_di_kem) as so_lan_su_dung
from hop_dong hd 
join hop_dong_chi_tiet hdct on hd.ma_hop_dong=hdct.ma_hop_dong
join dich_vu_di_kem dvdk on hdct.ma_dich_vu_di_kem = dvdk.ma_dich_vu_di_kem
join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
group by dvdk.ma_dich_vu_di_kem
having so_lan_su_dung <= 1
order by hd.ma_hop_dong;
 
-- Task_15

select 
nv.ma_nhan_vien,
nv.ho_ten, 
td.ten_trinh_do, 
bp.ten_bo_phan, 
nv.so_dien_thoai, 
nv.dia_chi,
count(hd.ma_nhan_vien) as so_hop_dong_da_lap 
from nhan_vien nv
join trinh_do td on td.ma_trinh_do=nv.ma_trinh_do
join bo_phan bp on  bp.ma_bo_phan=nv.ma_bo_phan
join hop_dong hd on hd.ma_nhan_vien=nv.ma_nhan_vien
where year(hd.ngay_lam_hop_dong) between 2020 and 2021
group by nv.ma_nhan_vien
having  so_hop_dong_da_lap  <= 3
order by hd.ma_nhan_vien;


          