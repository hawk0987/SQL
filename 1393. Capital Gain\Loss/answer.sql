select stock_name,
    sum(case
        when operation='Buy' then price*-1
        else price
    end) as capital_gain_loss
from Stocks
group by stock_name
