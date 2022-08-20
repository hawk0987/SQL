with g as (select buyer_id, count(buyer_id) as orders_in_2019 from Orders where order_date like '2019%' group by buyer_id)

select user_id as buyer_id, join_date, ifnull(orders_in_2019, 0) as orders_in_2019
from Users U left join g
on U.user_id=g.buyer_id
