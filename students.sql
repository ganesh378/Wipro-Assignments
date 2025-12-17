use wiprodb;
create table Students(                                #1
 student_id int primary key,
 s_name varchar(255),
 department varchar(255),
 age int,
 marks int
);

insert into Students(student_id,s_name,department,age,marks)           #2
values
  (1,'john doe','cse',20,80),
  (2,'max ruin','eee',19,49),
  (3,'arnold','mech',20,55),
  (4,'krish star','ece',23,'75');
  
insert into Students(student_id,s_name,department,age)              #3,4
values(5,'ricky','civil',21);
  
insert into Students(student_id,s_name,department,age,marks)              #5
values(6,'lucas','civil',24,95);
  
  
select *from students;                                                 #6

select * from students                                                     #7
limit 1;

