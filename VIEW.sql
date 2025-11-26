use hr_employee;

create view Full_name as
select concat(first_name,' ',last_name) as full_name
from employee;

select * from Full_name;

-- Show all employees hired after January 1, 2022.
create view hired_January as
select hire_date,
 where hire_date between '2021-01-01' AND '2021-01-31';
 
 
 select * from hired_january
-- Find employees whose salary is more than 70,000
create view salary_70k as 
  select  first_name,last_name,salary
  from employee
  where salary>70000
  order by salary desc;
  
  select * from salary_70k
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
