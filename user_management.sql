select user,
host
from mysql.user;  

create user 'Iris'@'%'
identified by 'Iris@123';  

select user,
host 
from mysql.user; 

show grants
for 'Iris'@'%';  

grant select on college_db.* to 'Iris'@'%';

revoke select on college_db.* from 'Iris'@'%';

show databases;




