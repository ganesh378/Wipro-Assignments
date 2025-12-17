set sql_safe_updates=0;
set autocommit=0;
use wiprodb;
create table staff(
     id int,
     staff_name varchar(255),
     salary int,
     age int
);

insert into staff(id,staff_name,salary,age)
values (1,'rahul',50000,25),
	   (2,'rick',50000,22),
       (3,'lucas',40000,23),
       (4,'morty',55000,22),
       (5,'blake',60000,27);
commit;                                                       #<------COMMIT--------->

alter table staff
add allowance int;

insert into staff(allowance)
values (16000);

delete from staff
where id=4;

select*from staff;

rollback;                                                     #<-------ROLLBACK------->

start transaction ;
update staff
set salary=salary+5000
where salary=60000;

savepoint salary_hikes;


update staff
set allowance=2000
where id=3;

rollback to salary_hikes;


