use furama;

-- Task1
select * from nhan_vien nv 
where (nv.ho_ten regexp '^[HKT]') and (char_length(nv.ho_ten) <= 15);
	
-- Task2
select * from khach_hang kh
 where (kh.dia_chi like '% Quảng Trị' or kh.dia_chi like '% Đà Nẵng') 
	    and ((year(now()) - year(ngay_sinh) between 18 and 50));
-- Task3