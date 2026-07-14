create database Midhtech_db;
use Midhtech_db;
create table department(
dept_id int primary key, dept_name varchar(50));
insert into department values
(101,'Hr'),
(102,'Finance'),
(103,'IT'),
(104,'Sales'),
(105,'Marketing'),
(106,'Development');
select * from department;

create table Employee
(
  emp_id int primary key,
  emp_name varchar(50) not null,
  email varchar(100) unique,
  salary decimal(10,2) default 30000,
  age int check(age>=18),
  dept_id int,
  foreign key(dept_id)
  references department(dept_id)
  );

insert into Employee values 
(1,'John','john@gmail.com',45000,25,101),
(2,'siri','siri@gmail.com',55000,21,102),
(3,'janu','janu@gmail.com',45000,24,103),
(4,'pallu','pallu@gmail.com',35000,23,101),
(5,'Asri','Asri@gamil.com',65000,22,102),
(6,'lassi','lassi@gmail.com',22000,30,106),
(7,'Rani','rani@gmail.com',33000,29,104),
(8,'hari','hari@gmail.com',54000,30,105);
select * from employee;

update employee 
set salary = 100000
where emp_id =101;

select * from employee;

update employee
set age = 32
where emp_id = 3;

update employee
set salary = salary - 10000
where emp_id = 1;

update employee
set salary = salary + 10000
where emp_id = 2; 

select * from employee;  

#Transaction

start transaction;
update employee
set salary = salary - 10000
where emp_id = 1;

update employee
set salary = salary + 10000
where emp_id = 2; 

commit;

select * from employee;

alter table department add phone_no int;

select * from department;

alter table department modify dept_name varchar(100);

select * from department;

alter table department rename column phone_no to mobile_number;

delete from employee where dept_id = 105;






























































































































