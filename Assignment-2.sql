use assignments;
create table library(
    user_id int,
    username varchar (255),
    book_name varchar(255),
    book_id int
);

insert into library(user_id,username,book_name,book_id)
values (1,'ricky','was i ever enough',567),
        (2,'lucas','dune',876),
        (3,'frey','great mage',789),
        (4,'blake','ordeal',790);
alter table library 
add column  deadline int null;

drop table library;

select * from library;