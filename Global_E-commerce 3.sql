use Global_ECommerence

-- EXTRACT  YEAR FROM ORDER_DATE(DATE)
select *, extract(year from order_date) as yearly from orders ;

-- SEARCH CUSTOMERS WITH STARTING ALHABET 'A'
select customer_name from customers
where customer_name like 'A%';

-- SEARCH BY NAME
select count(customer_name) as Kumar from customers
where customer_name like '%kumar%';

-- HIGHEST REVENUE
SELECT * from orders
where quantity*price  = (select max(quantity*price) from orders);

-- Customers with more than 10 orders
SELECT o.customer_id,count(o.quantity),c.* from orders as o
join customers c on c.customer_id=o.customer_id
group by o.customer_id
having count(o.quantity)>10;

-- Products sold more than average quantity
select product,sum(quantity),avg(quantity) from orders
group by product
having sum(quantity)>avg(quantity);



