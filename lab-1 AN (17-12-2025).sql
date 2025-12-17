create database labsession;
use labsession;
create table employess(
    id int primary key,
    emp_name varchar(255),
    salary int,
    join_date date,
    dept varchar(20)
);

insert into employess 
values (1,'amit',30000,'2021-01-10','HR'),
	    (2,'ravi',50000,'2020-03-15','IT'),
        (3,'Neha',70000,'2019-07-20','FINANCE'),
        (4,'Meena',60000,'2022-01-12','IT');

select upper(emp_name) from employess;                                                  #<--SCALAR FUNCTION-->

select emp_name , length(emp_name) as name_length
from employess;

select *,curdate() as today_date
from employess;

select *,datediff(curdate(),join_date) as expereience
from employess;

select count(*) from employess;                                                          #<--AGGREGATE FUNCTIONS-->

select dept,avg(salary) as avg_salary from employess
group by dept;

select dept,sum(salary) as avg_salary from employess
group by dept;

select max(salary) as max_salary from employess
where dept='IT';

select emp_name,salary,                                                                  #<--Expressions and CAse-->
if(salary<= 60000,' 10%bonus','5%bonus') as bonus_percentage
from employess;