--UC7 To find sum, average, min, max and number of male and female employees.
--Invoking the payroll services database.
use payroll_service;
-- To retrieve all the employee payroll data that is added to payroll service database.
select*from employee_payroll;
--Sum Of the salary from the Employee Payroll table grouping by Gender for females.
select SUM(SALARY) as 'SumOfSalary' from employee_payroll
where gender = 'F' group by gender;
--Sum Of the salary from the Employee Payroll table grouping by Gender for Males.
select SUM(SALARY) as 'SumOfSalary' from employee_payroll
where gender = 'M' group by gender;
--Sum Of the salary Count of employee, Minimum Salary And Maximum salary from the Employee Payroll table grouping by Gender for females. 
select SUM(SALARY) as 'SumOfSalary', MIN(SALARY) as 'MinimumSalary', 
MAX(SALARY) as 'MaximumSalary', COUNT(SALARY) as 'NumberOfFemales',
AVG(SALARY) as 'AverageSalary' from employee_payroll where gender = 'F' group by gender;
--Sum Of the salary Count of employee, Minimum Salary And Maximum salary from the Employee Payroll table grouping by Gender for Males.
select SUM(SALARY) as 'SumOfSalary', MIN(SALARY) as 'MinimumSalary', 
MAX(SALARY) as 'MaximumSalary', COUNT(SALARY) as 'NumberOfMales',
AVG(SALARY) as 'AverageSalary' from employee_payroll where gender = 'M' group by gender;
