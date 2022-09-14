use quan_li_ban_hang;
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order

	select orders_id, orders_date, orders_total_price from orders;
    
-- danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách

select customer_name,product_name
from customer c 
join orders o on c.customer_id = o.customer_id
join order_detail od on o.orders_id = od.orders_id
join product p on od.product_id = p.product_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select customer_name
from customer c
	left join orders o on (o.customer_id = c.customer_id)
where o.customer_id is null;
 
 -- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn
 -- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
 -- Giá bán của từng loại được tính = odQTY*pPrice)
 
select o.orders_id, o.orders_date, sum(p.product_price *orders_quantity) as sum
from order_detail od
	join product p on p.product_id = od.product_id
	join orders o on od.orders_id = o.orders_id
group by od.orders_id
order by sum desc;
