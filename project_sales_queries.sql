-- select customer_name,location from customers

-- select product_name,product_category from products

select c.customer_name, o.quantity, p.product_name
from orders o
join products p on p.product_id=o.product_id
join customers c on c.customer_id=o.customer_id

select c.customer_name,o.order_id,p.product_name
from orders o
join customers c on c.customer_id=o.customer_id
join products p on p.product_id=o.product_id
where c.customer_name="Alice";

select * from orders
where order_date between '2024-07-01' and '2024-07-04' ;

use sales

DELIMITER &&
CREATE PROCEDURE ORDER_PRODUCTS ()
BEGIN
SELECT o.order_id, o.customer_id, o.product_id, o.quantity, o.order_date, p.product_id AS product_p_id, p.product_name, p.price
FROM orders AS o
LEFT JOIN products p ON p.product_id = o.product_id
UNION
SELECT o.order_id, o.customer_id, o.product_id, o.quantity, o.order_date, p.product_id AS product_p_id, p.product_name, p.price
FROM products AS p
LEFT JOIN orders o ON p.product_id = o.product_id
WHERE o.product_id IS NULL;
END &&

CALL ORDER_PRODUCTS



