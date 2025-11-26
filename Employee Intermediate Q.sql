use hr_employee;
select * from employee;

select concat(first_name, " " ,last_name) as full_name from employee;

select * from employee
 where hire_date > "2022-01-01";
 
select * from employee
 where salary > 70000;
 
select department_name from department;

select * from employee
order by salary desc;

