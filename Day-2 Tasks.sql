create database office_db;
use office_db;  
create table department(  
   department_id int primary key,
   department_name varchar(50)
   );
create table employee(
     employee_id int primary key,
     employee_name varchar(50) not null,
     email varchar(50) unique,
     salary decimal(10,2) default 25000,
     age int check(age>=18),
     department_id int,
     foreign key (department_id) references department(department_id)
     );
insert into department (department_id, department_name) values
(101, 'Human Resources'),
(102, 'Finance'),
(103, 'IT'),
(104, 'Marketing'),
(105, 'Sales');
insert into employee
(employee_id, employee_name, email, salary, age, department_id)
values
(1,'siri','siri@gmail.com',60000,21,101),
(2,'pallu','pallu@gmail.com',60000,30,103),
(3,'Asri','asri@gmail.com',45000,24,102),
(4,'Diva','diva@gmail.com',70000,35,103),
(5,'kv','kv@gmail.com',52000,27,104),
(6,'lassi','lassi@gmail.com',48000,25,105),
(7,'Micky','micky@gmail.com',65000,32,101),
(8,'Janu','janu@gmail.com',40000,23,102),
(9,'uma','uma@gmail.com',75000,29,104),
(10,'ramu','ramu@gmail.com',50000,26,105);
desc employee;
select * from employee;

#task2
select * from employee;

select employee_name,salary from employee;

select * from employee where salary>50000;

select * from employee where age between 25 and 30;

select * from employee where department_id in(101,103);

select distinct department_id from employee;

select * from employee order by salary desc;

select * from employee limit 5;

select * from employee where emp_name like 'J%';

select count(*) from employee;

select count(*) as total_employees from employee;

select max(salary) as maximum_salary from employee;

select min(salary) as minimum_salary from employee;

select avg(salary) as average_salary from employee;

select department_id,count(*) from employee group by department_id;

select department_id,count(*) from employee group by department_id having count(*)>1;

select employee.employee_name,department.department_name from Employee
inner join department
on employee.department_id = department.department_id;