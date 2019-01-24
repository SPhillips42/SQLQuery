<<<<<<< HEAD
Select Description, count(*) as 'NBR sold', sum(quantity * price)
from OrderLines ol
group by Description
order by sum(quantity * price) desc
=======
Select Description, count(*) as 'NBR sold', sum(quantity * price)
from OrderLines ol
group by Description
order by sum(quantity * price) desc
>>>>>>> 3c0b0b2da75e5729bbb7fcec0912dec2e1c24410
