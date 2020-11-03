--UC8 Ability to extend employee_payroll data to store employee information like employee phone, address and department
--Invoking the payroll services database.
use payroll_service;
-- To retrieve all the employee payroll data that is added to payroll service database.
select*from employee_payroll;
--Adding new column.
alter table employee_payroll
add phoneNumber bigint, department varchar(100) not null default 'HR', 
address varchar(100) not null default 'Bangalore';
-- To retrieve all the employee payroll data that is added to payroll service database.
select*from employee_payroll;

