use quan_li_ban_hang;
insert into customer
values
(1,"Minh Quan",10),
(2,"Ngoc Oanh",20),
(3,"Hong Ha",50);
insert into orders
values
(1,1,"2006-03-26",null),
(2,2,"2006-03-23",null),
(3,1,"2006-03-16",null);
insert into product
values
(1,"May Giat",3),
(2,"Tủ lạnh",5),
(3,"Điều hòa",7),
(4,"Quạt",1),
(5,"Bếp điện",2);
insert into order_detail
values
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);