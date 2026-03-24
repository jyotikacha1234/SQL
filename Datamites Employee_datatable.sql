create database Datamites;
Use datamites;
show databases;
create table employee_details(
emp_id varchar(8),
emp_name varchar(20),
emp_designation varchar(20),
emp_age int);
Show tables;
insert into employee_details VALUES ('E4001','PRADEEP','HR',36),
('E4002','ASHOK','MANAGER',28),
('E4003','PAVAN KUMAR','ASS.MANAGER',28),
('E4004','SANTOSHI','STORE MANAGER',25),
('E4005','THAMAN','GENERAL MANAGER',26);

use datamites;
select * from datamites.employee_details;

Set sql_safe_updates = 0;

update employee_details set emp_name='John',emp_age=40 where emp_id='E4005';

select * from employee_details;

Delete from employee_details where emp_id = 'E4005';

select * from employee_details;

Set sql_safe_updates = 1;

alter table employee_details add emp_experience int;

alter table employee_details drop column emp_experience;

alter table employee_details modify emp_name varchar(50);

alter table employee_details rename column emp_age to age_of_employee;

alter table employee_details rename to employee_data;

select * from employee_data;



