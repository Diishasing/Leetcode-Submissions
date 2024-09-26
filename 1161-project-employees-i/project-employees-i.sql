# Write your MySQL query statement below
select 
    distinct(p.project_id), round((cast(sum(e.experience_years) as float)/count(p.employee_id)), 2) as average_years  
from 
    Project p 
 join 
    Employee e 
on 
    e.employee_id = p.employee_id
group by 
    project_id;    