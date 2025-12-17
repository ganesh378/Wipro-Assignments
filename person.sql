use wiprodb;
create table Employee ( 
EmployeeId int primary key ,
Employee_name varchar(255),
Employee_Department varchar(255),
salary float,
Designation varchar(255),
foreign key(customer_id) references customer(customer_id)
); 
insert into Employee(EmployeeId,Employee_name,Employee_department,salary,Designation, customer_id)
values (56789,'ganesh','Testing',7.5,'testert',56789);
select * from Employee;
