<<<<<<< HEAD
select City, 
sum(sales) as 'Sum', 
avg(sales) as 'Average',
Count(*) as 'Count' 
from customers
group by city
=======
select City, 
sum(sales) as 'Sum', 
avg(sales) as 'Average',
Count(*) as 'Count' 
from customers
group by city
>>>>>>> 3c0b0b2da75e5729bbb7fcec0912dec2e1c24410
having sum(sales) > 600000; 