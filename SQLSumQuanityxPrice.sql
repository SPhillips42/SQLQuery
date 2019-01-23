Select Description, count(*) as 'NBR sold', sum(quantity * price)
from OrderLines ol
group by Description
order by sum(quantity * price) desc
