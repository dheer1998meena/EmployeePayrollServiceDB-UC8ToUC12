--UC 10 Ability to make Terissa as part of Sales and Marketing Department.
--Invoking the payroll services database.
use payroll_service;
-- To retrieve all the employee payroll data that is added to payroll service database.
select*from employee_payroll;
--Add/update data into the table
--Adding Teressa as a part of Marketing dept also
insert into employee_payroll(EmpName, basic_pay, StartDate, gender, department)
values ('Terissa', 30000, '2014-06-08', 'F', 'Marketing');
-- Updating the other department of terissa as Sales
update employee_payroll set department = 'Sales'
where  EmpName = 'Terissa' and EmpId =6;