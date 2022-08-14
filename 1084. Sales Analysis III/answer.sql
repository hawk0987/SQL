select a.product_id, a.product_name
from Product a join Sales b
on a.product_id = b.product_id
group by b.product_id
having 1=1
and count(b.product_id)
and min(b.sale_date) >= '2019-01-01'
and max(b.sale_date) <= '2019-03-31'
