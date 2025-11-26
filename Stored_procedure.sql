use hr_employee
-- Write a stored procedure to display all employees.

delimiter &&
create procedure Employees()
Begin
  Select * from employee;
end &&

CALL Employees


-- Create a stored procedure that takes a department_id as input and lists all employees in that department.
delimiter &&
Create Procedure Department_Employee(IN Dept_id int)
Begin
   Select * from employee where department_id = Dept_id;
End &&

CALL  Department_Employee(101);




-- Write a procedure to insert a new employee into the employees table.
Delimiter &&
create procedure new_employee (
  In ID INT,
  IN FN Varchar(50),
  In LN Varchar(50),
  IN DID INT,
  In HD Date,
  in S INT
)Begin
 Insert Into employee (employee_id,first_name,last_name,department_id,hire_date,salary)
 Values(ID,FN,LN,DID,HD,S);
END &&
Delimiter &&



-- Make a procedure that updates the salary of an employee based on employee_id.
DELIMITER &&
CREATE PROCEDURE update_salary(
IN Salary INT, 
IN E_id INT
)
Begin
   Update employee set salary=Salary where employee_id=E_id;
End &&
Delimiter ;

Call update_salary(350000,23)

Select * from employee;


-- Create a procedure to delete an employee by employee_id.

Delimiter &&
Create procedure Delete_Emp(
In Emp_id INT
)
begin 
   delete from employee where Emp_id = employee_id;
End &&
Delimiter &&

call Delete_Emp(2);

Select * from employee


-- Total number of employees using stored procedure
Delimiter &&
create procedure Count_employee()
begin
Select Count(employee_id) from employee;
end&&
Delimiter ;

call Count_employee

-- Total number of employees department wise using stored procedure
Delimiter &&
create procedure Deptemp(In dep_id Int)
Begin
  Select Count(e.employee_id) as Total_employee_department,department_name
  from employee e
  Join deparment d On d.department_id=e.department_id
    where dep_id=department_id;
End&&
Delimiter ;

call Deptemp(101);

select * from department




























