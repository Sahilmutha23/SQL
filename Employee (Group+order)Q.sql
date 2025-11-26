use hr_employee;

select Concat(e.first_name,' ', e.last_name)as full_name, department.department_name
  from employee as e
  join department on department.department_id = e.department_id;
  
select e.first_name, department.department_name
from employee as e
join department on department.department_id=e.department_id
 where department.department_name="IT";

select project.project_name , department.department_name
from project
join department on department.department_id= project.department_id;

select concat(e.first_name,' ',e.last_name) as Full_name, e.hire_date, department.department_name
from employee as e
join department on department.department_id=e.department_id;

select concat(e.first_name,' ',last_name)as full_name, department.department_name, project.end_date
from employee as e
join department On department.department_id=e.department_id
join project on project.department_id=e.department_id
 where project.end_date>"2023-07-31";