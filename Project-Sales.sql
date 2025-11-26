create database Sales;

use Sales

create table customers (
  customer_id int primary key,
  customer_name varchar(150),
  email varchar(50),
  location varchar(50)
  );

create table products (
  product_id INT primary key,
  product_name varchar(50),
  product_category varchar(50),
  price INT,
  stock INT
  );


create table orders (
   order_id INT primary key,
   customer_id int,
   product_id int,
   quantity INT,
   order_date date,
   foreign key(customer_id) references customers(customer_id),
   foreign key(product_id) references products(product_id)
);


select product_id from products
union
select order_id from orders;

use sale




  

