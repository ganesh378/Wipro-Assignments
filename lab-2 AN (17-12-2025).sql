use labsession;
create table customers(
    id int primary key,
    cname varchar(225),
    email varchar(255),
    city varchar(40)
);

insert into customers
values(1,'Amit','amit@123gmail.com','Hyderbad'),
	  (2,'Rahul','rahul@gmail.com','Chennai'),
      (3,'Lucas','123@gmail.com','Chennai'),
      (4,'Ricky','ricky765@gmail.com','Banglore'),
      (5,'Frey','fry@gmail.com','Vijayawada');
      
select * from customers;

select cname,email,city from customers
where city like 'chennai';