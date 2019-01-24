<<<<<<< HEAD
select *
from Customers c
left join orders o
on o.customerid = c.Id
where o.Id is null
=======
select *
from Customers c
left join orders o
on o.customerid = c.Id
where o.Id is null
>>>>>>> 3c0b0b2da75e5729bbb7fcec0912dec2e1c24410
order by c.Id