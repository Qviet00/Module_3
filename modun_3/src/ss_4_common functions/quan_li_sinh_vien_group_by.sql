use quan_li_sinh_vien;

select * from subjects s
where s.credit = (select max(credit) from subjects);
        
select s.*, m.mark
from subjects s
join marks m on s.sub_id=m.sub_id
where m.mark = (select max(mark) from marks);

select s.*, avg(m.mark) as diem_trung_binh
from student s
        left join marks m on m.student_id = s.student_id
group by m.student_id
order by diem_trung_binh desc;
