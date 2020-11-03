--UC4 To retrieve all the employee payroll data that is added to payroll service database.
use payroll_service;
--Reading the entire data from the employee payroll table
select*from employee_payroll;
-- Inserting the data from the employee payroll table excluding the ID as it is default ad auto-increment
insert into employee_payroll(EmpName,Salary,StartDate)
values ('Rajat Sharma', 20000, '2018-03-05'),
('Ajay', 35000, '2019-08-08'), ('Ruhi', 40000, '2019-07-08'),
('Ramesh', 45000, '2018-05-06'), ('Aliya', 33000, '2016-08-08'),
('Terissa', 25000, '2014-06-08'), ('Mannu', 50000, '2017-06-08');
-- To retrieve all the employee payroll data that is added to payroll service database.
select*from employee_payroll;
--Retreiving specific column from the employee payroll table.
select Salary from employee_payroll;
select EmpName from employee_payroll;