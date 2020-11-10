select * from sys.databases

create database payroll_service

use payroll_service

select DB_NAME()

create table employee_payroll
(
id int identity(1,1),
name varchar(25) not null,
salary money not null,
start date not null
);

select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME='employee_payroll'



insert into employee_payroll values
('Bill',100000.00,'2018-01-03'),
('Teri', 200000.00,'2019-11-13'),
('Charlie', 300000.00,'2020-05-21');

select * from employee_payroll

select * from employee_payroll where name ='Bill'

select GETDATE()

select * from employee_payroll where start BETWEEN '2018-01-01' and GETDATE()

select * from employee_payroll

alter table employee_payroll add gender varchar(1)

select * from employee_payroll

update employee_payroll set gender = 'M' where name = 'Charlie'


update employee_payroll set gender = 'M' where name = 'Bill'

update employee_payroll set gender = 'F' where name = 'Teri'


select gender,sum(salary) from employee_payroll group by gender

alter table employee_payroll add phone varchar(15);

alter table employee_payroll add department varchar(50);

alter table employee_payroll add address varchar(150);

alter table employee_payroll add constraint df_address default 'India' for address;

insert into employee_payroll (name, salary, start) values
('BILLI', 200000, '2018-01-03')

sp_rename 'employee_payroll.salary','basic pay'

alter table employee_payroll add 
Deduction float,
taxable_pay real,
Income_tax real;

