select activity_date as day, count(distinct user_id) as active_users 
from Activity
group by activity_date
having 1=1
and activity_date <= '2019-07-27'
and activity_date > ADDDATE('2019-07-27', INTERVAL -30 day)
