select abs(-8);                                       #<---Numerical Functions--->
select round(123.456,1);
select ceil(5.6);
select floor(5.6);
select power(2,3);
select mod(4,2);

select upper('ganesh');                                            #<--STRING FUNCTIONS-->
select lower('ganesh');  
select length('ganesh');  
select concat('mohan','ganesh');  
select substring('ganesh',1,4);  
select trim(' ganesh  '); 
select replace('mohanganesh','mohan','g');

select now();                                                      #<--DATE AND TIME FUNCTIONS-->
select curdate();    
select datediff('2012-01-10','2025-01-01');    
select dateadd(day,10,2025-10-01);    
select month('2025-10-03'); 
select year('2025-10-03');       