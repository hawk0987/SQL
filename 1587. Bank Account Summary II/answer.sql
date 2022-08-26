select name, sum(amount) as balance
from Users a join Transactions b
on a.account = b.account
group by a.account
having sum(amount) >= 10000
