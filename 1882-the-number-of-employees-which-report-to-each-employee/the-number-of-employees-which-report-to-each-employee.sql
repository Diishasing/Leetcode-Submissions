# Write your MySQL query statement below
SELECT 
    e.employee_id, e.name
    , count(e2.reports_to) as reports_count, 
    round(avg(e2.age * 1.0), 0) as average_age
FROM 
    Employees e
INNER JOIN 
    Employees e2
ON 
    e.employee_id = e2.reports_to
WHERE
    e2.reports_to is not Null
GROUP BY
    e.employee_id,
    e.name
ORDER BY
    e.employee_id