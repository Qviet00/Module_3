use quan_li_sinh_vien;

SELECT 
    *
FROM
    student s
WHERE
    (s.student_name REGEXP '^[H]');
         
SELECT 
    *
FROM
    class c
WHERE
    MONTH(c.start_date) = 12;
         
SELECT 
    *
FROM
    subjects s
WHERE
    s.credit BETWEEN 3 AND 5;
         
set sql_safe_updates=0;
UPDATE student s 
SET 
    class_id = 2
WHERE
    student_name = 'Hung';
         
SELECT 
    s.student_name, m.mark, su.sub_name
FROM
    mark m
        INNER JOIN
    student s ON m.student_id = s.student_id
        INNER JOIN
    subjects su ON m.sub_id = su.sub_id
ORDER BY m.mark DESC , s.student_name ASC;
 