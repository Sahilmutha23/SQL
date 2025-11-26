SELECT e.department_id, COUNT(e.employee_id) AS employee_count, department.department_name
FROM employee e
join department on 	department.department_id=e.department_id
GROUP BY department_id;

select avg(e.salary)as average_salary, department.department_name
from employee as e
join Department on department.department_id=e.department_id
GROUP BY department.department_id;

select sum(e.salary) as total_salary, department.department_name
from employee as e
join department on department.department_id=e.department_id
group by department.Department_id
order by total_salary desc
limit 1;

select count(*)as total_project,department_id
from project
group by department_id;

select min(hire_date)as earliest, max(hire_date) as latest
from employee;


