use quan_li_sinh_vien;

SELECT 
    *
FROM
    subjects s
WHERE
    s.credit = (SELECT 
            MAX(credit)
        FROM
            subjects);
        
SELECT 
    s.*, m.mark
FROM
    subjects s
        JOIN
    marks m ON s.sub_id = m.sub_id
WHERE
    m.mark = (SELECT 
            MAX(mark)
        FROM
            marks);

SELECT 
    s.*, AVG(m.mark) AS diem_trung_binh
FROM
    student s
        LEFT JOIN
    marks m ON m.student_id = s.student_id
GROUP BY m.student_id
ORDER BY diem_trung_binh DESC;
