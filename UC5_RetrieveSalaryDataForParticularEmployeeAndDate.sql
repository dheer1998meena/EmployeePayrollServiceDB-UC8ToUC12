--UC5 To retrieve salary data for a particular employee as well as all employees who have joined in a particular data range from the payroll service database
use payroll_service;
-- To retrieve all the employee payroll data that is added to payroll service database.
select*from employee_payroll;
--To retrieve salary data for a particular employee.
select EmpName ,Salary from employee_payroll where EmpName='Ajay';
--To retrieve salary data for  all employees who have joined in a particular data range from the payroll service database.
select EmpName ,Salary from employee_payroll
where StartDate between CAST('2018-05-06' as date) and CAST(getdate() as date);
