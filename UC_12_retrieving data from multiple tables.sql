--UC12 retriving data using different tables
--Invoking the payroll services database 
use payroll_services;
--UC4Retrieving all the records from the employee payroll table
select emp.EmpID, emp.EmpName, emp.StartDate, emp.gender, emp.phoneNumber, emp.address, 
dept.department, dept.basic_pay, pay.deductions, pay.taxable_pay, pay.income_tax, pay.net_pay
 from employee_payroll emp, employee_department dept, payroll pay
 where emp.EmpId = dept.EmpId and dept.basic_pay = pay.basic_pay;
 --UC5 Retrieving all the records from the employee payroll table for a particular employee.
select emp.EmpId, emp.EmpName, emp.StartDate, emp.gender, emp.phoneNumber, emp.address, 
dept.department, dept.basic_pay, pay.deductions, pay.taxable_pay, pay.income_tax, pay.net_pay
 from employee_payroll emp, employee_department dept, payroll pay
 where emp.EmpId= dept.EmpId and dept.basic_pay = pay.basic_pay and emp.EmpName = 'Terissa';
 --UC5 Retrieving all the records from the employee payroll table for a employee joining date between a time fram
select emp.EmpId, emp.EmpName, emp.StartDate, emp.gender, emp.phoneNumber, emp.address, 
dept.department, dept.basic_pay, pay.deductions, pay.taxable_pay, pay.income_tax, pay.net_pay
 from employee_payroll emp, employee_department dept, payroll pay
 where emp.EmpId = dept.EmpId and dept.basic_pay = pay.basic_pay and 
 emp.StartDate between CAST('2018-01-01' as date) and CAST(getdate() as date);