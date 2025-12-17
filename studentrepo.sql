use wiprodb;
create table StudentRepo(                                        #1
   id int not null primary key,
   S_name varchar(255) not null , 
   class varchar(255) not null,
   mark int not null,
   gendecustomerr varchar(255) not null);

insert into StudentRepo (id,S_name,class,mark,gender)            #2
values
  (1,'john doe','four',75,'female'),
  (2,'max ruin','three',85,'male'),
  (3,'arnold','three',55,'male'),
  (4,'krish star','four',60,'female'),
  (5,'john mke','four',60,'female'),
  (6,'alex john','four',55,'male'),
  (7,'john rob','five',78,'male'),
  (8,'asruid','five',85,'male'),
  (9,'tes qry','six',78,'male'),
  (10,'big john','four',55,'female');
update StudentRepo                                                #3
set mark=70
where id=3;

delete from StudentRepo                                            #4
WHERE id=9;

select * from StudentRepo                                          #6
where gender='female';

select * from StudentRepo                                           #7
where mark< 60;

select * from StudentRepo                                          #8
where mark >60;

select * from StudentRepo;   