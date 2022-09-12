drop database if exists student_managerment;
create database student_managerment ;
use student_managerment;
create table student(
ID_student int primary key auto_increment,
name_student varchar(45),
name_class varchar(50),
age int,
addres varchar(45)
);
create table teacher(
ID_teacher int primary key auto_increment,
name_teacher varchar(45),
levels varchar(50),
age int,
addres varchar(45)
);
insert into student
values(1,"Hải","C0622G1",18,"Đà nẵng"),
	  (2,"Nam","C0622G1",19,"Đà nẵng");
insert into teacher
values(1,"Hải","Tutor",18,"Đà nẵng"),
	  (2,"Nam","Tutor",19,"Đà nẵng");
select * from student;
select * from teacher;