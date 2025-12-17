set sql_safe_updates=0;
set autocommit=0;
use wiprodb;

create table innodb(
    student_id int primary key,
    student_name varchar(255),
    marks int
);

insert into innodb(student_id,student_name,marks)
values (1,'Arjun',75),
        (2,'Meera',82),
        (3,'Rohit',68);
        

update innodb                                                             #<--1-->
set marks=marks+10
where student_name='Meera';
commit;

update innodb                                                             #<--2-->
set marks=marks-10
where student_name='Rohit';
rollback;

start transaction;                                                        #<--3-->
update innodb
set marks=marks+8
where student_id=1;
savepoint arjun_marks;

update innodb
set marks=marks+8
where student_id=3;

rollback to arjun_marks;                                                   #<--4-->

update innodb                                                             #<--5-->
set marks=marks+10
where student_name='Meera';

rollback;                                                            #<--6-->

commit;                                                             #<--7-->

select * from innodb;

