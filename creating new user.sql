create user 'testuser'@'localhost' identified by 'root';

select user,host from mysql.user;

grant all privileges
on wiprodb.*
to 'testuser'@'localhost';

revoke all 
on wiprodb.*
from 'testuser'@'localhost';