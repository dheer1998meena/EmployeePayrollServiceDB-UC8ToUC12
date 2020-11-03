--UC2 Creating employee payroll table in the payroll service database to manage employee payroll.
use payroll_service;
create table employee_payroll
(EmpId int not null identity(1,1) primary Key,
EmpName varchar(150) not null,
Salary float not null,
StartDate date not null
); 
select*from employee_payroll;