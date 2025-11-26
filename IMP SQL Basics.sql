use hr_employee

-- Find the second/third highest salary from a table
select Concat(first_name,' ' ,last_name)  as emp_name,salary from employee 
order by salary desc
limit 1 offset 2;

SELECT name, COUNT(*) FROM employees GROUP BY name HAVING COUNT(*) > 1;

-- Query to find duplicate records in a table
select first_name,last_name,count(*) from employee
group by first_name
having count(*)>1;

select * from employee
order by salary desc;

select * from employee
where first_name like '%s%';

select year(hire_date),month(hire_date),first_name,last_name 
from employee;


