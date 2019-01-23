select *
from Customers c
left join orders o
on o.customerid = c.Id
where o.Id is null
order by c.Id