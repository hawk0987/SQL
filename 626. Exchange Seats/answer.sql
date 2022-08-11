with g as (select * from Seat)

select a.id,
    case
        when mod(a.id, 2) = 1 and (select student from g where id=a.id+1) is null then a.student
        when mod(a.id, 2) = 1 then (select student from g where id=a.id+1)
    else (select student from g where id=a.id-1)
    end as student
from Seat a
