use wiprodb;
create table customer(
customer_id int primary key,
customer_name varchar(255),
Subscription_type varchar (255)
);
alter table customer
add constraint 
customer_id check(customer_id>0);
insert into customer(customer_id,
customer_name,
Subscription_type ) values (56792,'frey','premium');
insert into customer(customer_id,
customer_name,
Subscription_type ) values (56790,'ricky','elite');
update customer 
set subscription_type ='premium'
where customer_id=56790;
select* from customer;

delete from customer 
where customer_id=56789;

select customer_name from customer
where Subscription_type='premium';

select * from customer 
limit 1;

select * from customer 
where customer_id between 5000 and 56790;




