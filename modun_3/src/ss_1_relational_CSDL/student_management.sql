drop database if exists student_managerment;
create database student_managerment ;
use student_managerment;
CREATE TABLE student (
    ID_student INT PRIMARY KEY AUTO_INCREMENT,
    name_student VARCHAR(45),
    name_class VARCHAR(50),
    age INT,
    addres VARCHAR(45)
);
CREATE TABLE teacher (
    ID_teacher INT PRIMARY KEY AUTO_INCREMENT,
    name_teacher VARCHAR(45),
    levels VARCHAR(50),
    age INT,
    addres VARCHAR(45)
);
insert into student
values(1,"Hải","C0622G1",18,"Đà nẵng"),
	  (2,"Nam","C0622G1",19,"Đà nẵng");
insert into teacher
values(1,"Hải","Tutor",18,"Đà nẵng"),
	  (2,"Nam","Tutor",19,"Đà nẵng");
SELECT 
    *
FROM
    student;
SELECT 
    *
FROM
    teacher;