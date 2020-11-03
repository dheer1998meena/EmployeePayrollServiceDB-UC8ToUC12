--UC6  To add Gender to Employee Payroll Table and Update the Rows to reflect the correct Employee Gender.
use payroll_service;
-- To retrieve all the employee payroll data that is added to payroll service database.
select*from employee_payroll;
--Adding the gender attribute to the employee payroll table.
alter table employee_payroll add gender char(1);
select*from employee_payroll;
--Updating to add the value of gender in the employee payroll table.
update employee_payroll set gender = 'M' where EmpName = 'Ramesh' or EmpName = 'Rajat Sharma'or EmpName = 'Ajay';
update employee_payroll set gender = 'F' where EmpName = 'Ruhi' or EmpName = 'Aliya'or EmpName = 'Terissa'or EmpName= 'Mannu';
