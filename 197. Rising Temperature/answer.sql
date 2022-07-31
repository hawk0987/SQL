select b.id
from Weather a join Weather b
on a.recordDate = b.recordDate - Interval 1 DAY
where a.temperature < b.temperature
