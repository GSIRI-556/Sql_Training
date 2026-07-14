use Midhtech_db;
show tables;
# Highest Salary
select *
from Employee
where salary = (
    select MAX(salary)
    from Employee
);