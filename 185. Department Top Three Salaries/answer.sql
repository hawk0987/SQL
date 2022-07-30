select b.name as Department, a.name as Employee, a.salary as Salary
from(select *, dense_rank() over(partition by departmentId order by salary desc) as salaryRank from Employee) as a
join Department as b on a.departmentId = b.id
where salaryRank in ('1', '2', '3')
order by Department, Salary desc
