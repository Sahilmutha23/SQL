Create database HR_employee;
use HR_employee;

create table department (
   department_id INT primary key,
   department_name varchar(20)
);
select * from department;

Create table employee (
   employee_id INT primary key,
   first_name varchar(20),
   last_name varchar(20),
   department_id INT,
   hire_date date,
   salary int,
   foreign key (department_id) REFERENCES department(department_id)
   );
   
   select * from employee;
   
create table project (
  project_id INT primary key,
  project_name varchar(50),
  department_id INT,
  start_date date,
  end_date date,
  foreign key (department_id) references department(department_id)
  );
  
select * from project;

   
   
   