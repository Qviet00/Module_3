drop database if exists demo;
create database demo;
use demo;

create table users(
id int(3) not null auto_increment,
`name` varchar(120) not null,
email varchar(120) not null,
country varchar(120),
phone varchar(120),
primary key(id));
insert into users(`name`, email, country,phone) values('Minh','minh@codegym.vn','Viet Nam',"092341532");
insert into users(`name`, email, country,phone) values('Kante','kante@che.uk','Kenia',"092341532");
insert into users(`name`, email, country,phone) values('Việt','kante@che.uk','Kenia',"092341532");
select * from users;