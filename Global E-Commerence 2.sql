select c.*,o.*from customers as c
join orders o on c.customer_id=o.customer_id;

select customers.customer_name,customers.country,o.* from customers
join orders o on o.customer_id=customers.customer_id
where customers.country='India';

select * from customers