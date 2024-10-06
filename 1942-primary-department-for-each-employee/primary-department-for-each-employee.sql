# Write your MySQL query statement below
Select
    employee_id, department_id
From
    employee
Group by 1
having count(distinct department_id) = 1
union all
select employee_id, department_id
from employee
where primary_flag = "Y"