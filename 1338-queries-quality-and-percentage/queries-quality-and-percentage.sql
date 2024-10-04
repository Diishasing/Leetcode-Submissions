# Write your MySQL query statement below
select query_name, 
        round(avg(rating/position), 2) as quality,
        round(100 * sum(if(rating < 3, 1, 0))/count(1), 2) as poor_query_percentage
from queries
where query_name is not null
group by query_name
order by 2 desc;