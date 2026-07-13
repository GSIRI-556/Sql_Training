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

--  Primary key 
insert into employee (emp_id,emp_name,email,salary,age,dept_id) values
(
1,'alex','alex@gmail.com',50000,25,101);

-- Unique key 
insert into employee (emp_id, emp_name,email,salary,age,dept_id) values
(11,'kv','john@gmail.com',25000,52,102);

--  Not Null key
insert into employee (emp_id,email,salary,age,dept_id)values
(2,'siri@gmail.com',55000,21,102);

-- Default key
insert into employee (emp_id,emp_name,email,age,dept_id) values
(10,'ramu','ramu@gmail.com',21,105);

-- Check key
insert into employee (emp_id,emp_name,email,salary,age,dept_id) values
(10,'kavya','kavya@gmail.com',34000,22,106);

-- foreign key
insert into  employee values
(14,'sam','sam@gmail.com',45000,25,999);  

-- -- select emp_name,salary from employee;  
select * from employee;

-- select with where
select * from employee where salary>30000;
select * from employee where age>22;
select * from employee where emp_name='siri';
 -- distinct
select distinct dept_id from employee;

-- order by 
select * from employee order by salary; # default ascending order
select * from employee order by salary desc;  
select * from employee order by emp_name desc;
select * from employee order by emp_name;

--  limit
select * from employee limit 3;

-- Between
select * from employee where salary between 30000 and 60000;

-- In 
select * from employee where dept_id in (101,103,105);

-- Not in
select * from employee where dept_id not in (101,103,105);

-- is null
select * from employee where email is null;

-- is not null
select * from employee where email is not null;

-- like
select * from employee where emp_name like 's%';
select * from employee where emp_name like '%s%';
select * from employee where emp_name like '_a';
select * from employee where emp_name like '%si%';

-- Aggregate functions
select max(salary) from employee;
select min(salary) from employee;
select count(salary) from employee;
select sum(salary) from employee;
select avg(salary) from employee;  

-- Group by 
select dept_id, count(*) from employee group by dept_id;

-- Having
select dept_id,count(*) from employee group by dept_id having count(*)>2;

-- Alias
select  emp_id as employee_name,
salary as employee_salary
from employee;

select e.emp_id ,
e.salary from employee e;

select dept_id,avg(salary) from employee group by dept_id;
select dept_id,sum(salary) from employee group by dept_id;  
select dept_id,min(salary) from employee group by dept_id;  

# joins 
# Inner Join - it shows Matching records from two tables
-- select colname
-- from table1
-- inner join table2
-- on table1.colname = table2.colname;
select dept_name
from  department 
inner join employee
on department.dept_id = employee.dept_id;

select dept_name
from  department as d
inner join employee as e
on d.dept_id = e.dept_id;

select emp_name, salary
from employee
inner join department
on employee.dept_id = department.dept_id;

-- Returns all records from the left table and matching records from the right table.
select dept_name
from  department 
left join employee
on department.dept_id = employee.dept_id;

select emp_name, salary
from employee
left join department
on employee.dept_id = department.dept_id;

select * 
from employee
left join department
on employee.dept_id = department.dept_id;












