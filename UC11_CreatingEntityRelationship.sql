--UC 11 : Implemetation of E-R concept.
--Invoking the payroll services database.
use payroll_service;
--Creating the payroll table to handle the payroll computation of employee 
create table payroll
( basic_pay int not null primary key,
deductions float not null ,
taxable_pay float not null,
income_tax float not null, 
net_pay float not null);
--Creating employee department to handle the multi valued data integrity issue for the department attribute 
create table employee_department
( EmpId int not null primary key,
department varchar(50) not null ,
basic_pay int not null);
select * from employee_department;
--Removing the data Redundancy for now 
delete from employee_payroll where EmpId = 1007;
--Retrieving all the records from the employee department table.
select * from employee_department;
--Adding the data to the employee department table.
insert into employee_department
values (1 ,'Accounts', 45000), (2, 'Sales', 25000),
(3,'Marketing', 20000), (4, 'Manager', 70000),
(5, 'Developer', 50000), (6, 'Architect', 30000),
(7, 'CEO', 90000), (8, 'CTO', 80000);
--Creating employee Table
create table employee
(EmpId int not null identity(1,1) primary key,
EmpName varchar(150) not null,
Gender char(1) not null,
PhoneNo bigint not null,
Address varchar(500) not null,
StartDate date not null,
CompanyId int not null
);
--Retrieving all the records from the payroll table 
select * from payroll;
/* Adding pnly the simple attribute data to the payroll table */
insert into payroll(basic_pay, deductions, income_tax, taxable_pay, net_pay)
values (20000, 500, 1000, 19000, 18500), (25000, 700, 1000, 24000, 23300),
(30000, 1000, 1000, 29000, 28000), (45000, 2000, 1500, 43500, 41500),
(50000, 2500, 2000, 48000, 45500), (70000, 4000, 7000, 63000, 59000),
(80000, 6000, 8000, 72000, 66000), (90000, 7000, 9000, 81000, 74000);
/*Denoting the Sum Of the salary, Count of employee, Minimum Salary And Maximum salary
from the Payroll Services Databases grouping by Gender */
select emp.gender as 'Gender', SUM(dept.basic_pay) as 'Sum Of Salary', MIN(dept.basic_pay) as 'Minimum Salary', 
MAX(dept.basic_pay) as 'Maximum Salary', COUNT(distinct(emp.EmpName)) as 'Number Of Employee',
AVG(dept.basic_pay) as 'Average Salary' from employee_payroll emp, payroll pay, employee_department dept
where emp.EmpId = dept.EmpId and dept.basic_pay = pay.basic_pay group by emp.gender;