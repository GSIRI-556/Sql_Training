use Midhtech_db;  
show tables;
select * from employee;
select * from department;

create user 'student'@'%'
identified by 'student@123';
show grants for 'student'@'%';

grant select on Midhtech_db.* to 'student'@'%';

show grants for 'student'@'%';

#Transaction

set autocommit=0;
start transaction;
update employee
set salary = salary + 10000
where emp_id=1;
select * from employee;
rollback;
select * from employee; 


set autocommit=0;
start transaction;
update employee
set salary = salary+10000
where emp_id = 2;

commit;

select * from employee;
rollback;
select * from employee;

alter table employee add phone_num Bigint;

update employee set phone_num = 8978345679 where emp_id=5;  
update employee set phone_num = 8798435678 where emp_id=6;
update employee set phone_num = 7685432958 where emp_id=7;

select * from employee;





