select employee_id from
(select *
from Employees a left join Salaries b using(employee_id)
union
select *
from Employees a right join Salaries b using(employee_id)) as t1
where name is null
or salary is null
order by employee_id
