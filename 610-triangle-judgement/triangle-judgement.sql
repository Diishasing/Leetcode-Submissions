# Write your MySQL query statement below
SELECT *, IF(x + y > z and x + z > y and z + y > x, 'Yes', 'No') as triangle from Triangle  