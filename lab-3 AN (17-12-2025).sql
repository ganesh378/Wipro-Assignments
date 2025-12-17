use labsession;
set autocommit=0;
create table orders(
    id int primary key,
    Cust_name varchar(255),
    phone varchar(10)
    check(length(phone)=10)
);

insert into orders
values (1,'Amit','9876543210'),
       (2,'Rahul','9876543211'),
       (3,'patel','9876543212'),
       (4,'deva','9876543213'),
       (5,'varadha','9876543214');
       
start transaction;
insert into orders values (6,'Frey','9876543215');
savepoint s1;

insert into orders values (7,'Lucas','9876543216');
savepoint s2;

insert into orders values (8,'Iris','9876543217');
savepoint s3;

select * from orders;

rollback to s2;
commit;
select * from orders;