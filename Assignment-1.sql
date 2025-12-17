use assignments;
create table customer(
customer_id int primary key,
customer_name varchar(255),
vehicle_model varchar(255),
phone varchar(10) not null check (length(phone)=10)
);

insert into customer(customer_id,customer_name,vehicle_model,phone)
values (1,'arjun kumar','honda city',9876543210),
	   (2,'neha sharma','hyundai i20',9876543211),
       (3,'rahul verma','maruthi swift',9876543212),
       (4,'amit patel','kia seltos','9876543213'),
       (5,'pooja nair','honda amaze',9876543214);
       
select* from customer;

create table vehicle(
    car_id int primary key,
    customer_id int,
    status_ varchar(10),
    foreign key(customer_id) references customer(customer_id));

insert into vehicle(car_id,customer_id,status_)
values (112,1,'yes'),
	   (113,2,'no'),
       (115,3,'yes'),
       (117,4,'no'),
       (118,5,'yes');

select*from vehicle;
