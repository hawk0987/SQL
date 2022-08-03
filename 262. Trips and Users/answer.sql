with g as (select a.client_id, a.driver_id, a.city_id, a.status, a.request_at from Trips a join Users b
on a.client_id = b.users_id
join Users c
on a.driver_id = c.users_id
where b.banned != 'Yes' and c.banned != 'Yes'
and a.request_at>="2013-10-01" and a.request_at<="2013-10-03")


select h.request_at as 'Day', round(coalesce(i.cnt/h.cnt, 0), 2) as 'Cancellation Rate'
from (select request_at, count(*) as cnt from g group by request_at) as h
left join (select request_at, count(*) as cnt from g where status != 'completed' group by request_at) as i
on h.request_at = i.request_at
