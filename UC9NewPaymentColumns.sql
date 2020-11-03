--UC9 Ability to extend employee_payroll table to have Basic Pay,Deductions,Taxable Pay,Income Tax, Net Pay.
--Invoking the payroll services database.
use payroll_service;
-- To retrieve all the employee payroll data that is added to payroll service database.
select*from employee_payroll;
--Adding new columns
alter table employee_payroll
add deductions float, taxable_pay float, 
income_tax float, net_pay float;
-- Renaming salary as basic_pay
EXEC sp_rename 'employee_payroll.SALARY', 'basic_pay', 'COLUMN';
