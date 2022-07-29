select name as Customers
from Customers
where id not in (select a.id from Customers a join Orders b on a.id = b.customerId)
