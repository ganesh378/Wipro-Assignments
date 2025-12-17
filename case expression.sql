use wiprodb;

select ename,salary,
case
    when salary<30000 then 'low'
    when salary between 30000 and 60000 then 'medium'
    else 'high'
end as salary_level
from employees;

