use quan_li_ban_hang;
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order

	SELECT 
    orders_id, orders_date, orders_total_price
FROM
    orders;
    
-- danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách

SELECT 
    customer_name, product_name
FROM
    customer c
        JOIN
    orders o ON c.customer_id = o.customer_id
        JOIN
    order_detail od ON o.orders_id = od.orders_id
        JOIN
    product p ON od.product_id = p.product_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT 
    customer_name
FROM
    customer c
        LEFT JOIN
    orders o ON (o.customer_id = c.customer_id)
WHERE
    o.customer_id IS NULL;
 
 -- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn
SELECT 
    o.orders_id,
    o.orders_date,
    SUM(p.product_price * orders_quantity) AS sum
FROM
    order_detail od
        JOIN
    product p ON p.product_id = od.product_id
        JOIN
    orders o ON od.orders_id = o.orders_id
GROUP BY od.orders_id
ORDER BY sum DESC;
