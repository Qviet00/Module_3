use quan_li_sinh_vien;

select * from student s
         where (s.student_name regexp '^[H]');
         
select * from class c
         where month(c.start_date) = 12;
         
select * from subjects s
		 where s.credit between 3 and 5;
         
set sql_safe_updates=0;
update  student s
		 set class_id = 2 where student_name = 'Hung';
         
select s.student_name, m.mark, su.sub_name
from marks m
        inner join student s on m.student_id = s.student_id
        inner join subjects su on m.sub_id = su.sub_id
        order by m.mark desc , s.student_name asc;
 