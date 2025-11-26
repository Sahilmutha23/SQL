-- Create view high_value_orders

create view high_value_orders as
select * from orders
where (price*quantity)> 5000;

select * from high_value_orders

-- Query top 5 customers from the view
create view top_5 as 
 select sum(price*quantity) from high_value_orders
 group by customer_id
 order by sum(price*quantity) desc
 limit 5 ;
 select * from top_5
 
 -- Write a stored procedure to return all orders for a given customer_id.
 delimiter &&
 create procedure Cus_id (in cust_id INT)
   begin
     select * from orders where customer_id=cust_id;
end &&
delimiter ;

call Cus_id(1001);


-- Create a procedure to calculate total revenue for a given country and return it.
delimiter &&
create procedure Country_Revenue (in search_country Varchar(50))
begin
  select c.country,sum(o.price*o.quantity) from orders as o
    join customers c on c.customer_id=o.customer_id
    where c.country=search_country
    Group by c.country;
end &&
delimiter ;



call Country_Revenue('Australia');


use Global_ECommerence
select customer_name,count(*) from customers
group by customer_name
having count(*)>1;

select * from customers
where customer_id=1001;


 
 








