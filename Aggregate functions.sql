use wiprodb;
create table employees(
    id int,
    ename varchar(255),
    dept varchar(255),
    salary int
);

insert into employees
values (1,'amit','hr',30000),
        (2,'ravi','it',50000),
        (3,'neha','it',70000),
        (4,'meena','hr',40000),
        (5,'arjun','finance',60000);

select count(*) as emp_count
from employees;

select dept,sum(salary) as total_money
from employees
group by dept;

select dept,avg(salary) as total_money
from employees
group by dept;

select min(salary) as min_salary
from employees;

select dept,max(salary) max
from employees
group by dept;

    
