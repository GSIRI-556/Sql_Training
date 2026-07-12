create database college_db;
use college_db;
create table student(
student_id int primary key, student_name varchar(50), age int, city varchar(50) 
);
desc student;
insert into student (student_id, student_name, age, city) values
(101,'Rahul',21,'Hyderabad'),
(102,'Anjali',20,'Chennai'),
(103,'Ravi',22,'Banglore'),
(104,"priya",19,'Pune'),
(105,"Kiran",23,'Mumbai');
select * from student;
