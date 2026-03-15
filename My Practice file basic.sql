create database Pune_University;
Show databases;
use Pune_University;
create table Student_details(St_Rollnumber int,
St_Name varchar(25),
Subjects varchar (15),
St_marks_obtain int (4),
St_marks_total int (4));
show databases;
use Pune_University;
insert into Student_details Values
("101","Prayag","Maths","80","100"),
("102","Ketki","Science","68","100"),
("103","Shreyas","History","75","100"),
("104","Priya","English","94","100");

Select * from Student_details;

select * from Student_details where St_Rollnumber = 101;

# Change Student name and marks where student rollnumbers=10

Set Sql_safe_updates= 0;

Update Student_details set St_Name = "Akash", st_Marks_obtain = 58
where st_rollnumber = 104;

Select * from student_details;

set sql_safe_updates = 1;

show databases;

use pune_university;

select * from student_details;

delete from student_details where st_rollnumber= "103";

Update Student_details set St_Name = "Akash", st_Marks_obtain = 58
where st_rollnumber = 103;

select * from student_details;

alter table student_details add st_age int;

alter table student_details drop column st_age;

alter table student_details modify st_name varchar(50);

alter table student_details rename column st_name to Name_of_students; 

select * from student_details;

alter table student_details rename to Students_data;

select * from Students_data;
















 













