select b.name department, a.name Employee, a.salary Salary
from Employee a join Department b
on a.departmentId = b.id
where a.salary = (select max(salary) from Employee where departmentId = a.departmentId)
