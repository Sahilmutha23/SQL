select d.department_name, d.department_id
from department d
left join employee on employee.department_id=d.department_id
where employee.employee_id is null;

select e.first_name,e.last_name,e.hire_date,project.start_date
from employee e
join project on project.department_id=e.department_id
where e.hire_date < project.start_date;

select e.salary, avg(e.salary) as A,department.department_name
from employee as e
join department on department.department_id=e.department_id
where e.salary > A
group by department_name;

