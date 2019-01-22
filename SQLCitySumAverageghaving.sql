select City, 
sum(sales) as 'Sum', 
avg(sales) as 'Average',
Count(*) as 'Count' 
from customers
group by city
having sum(sales) > 600000; 