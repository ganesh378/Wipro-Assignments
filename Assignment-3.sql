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
        
update library
set book_id=878
where book_name='dune'; 

delete from library
where book_id=789;

select* from library;

