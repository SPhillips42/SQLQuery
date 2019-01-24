<<<<<<< HEAD
select c.Name as 'Customer', count(*) as 'Rolex orders'
from orderlines ol
join orders o
on ol.OrdersId = o.Id
join Customers c
on o.CustomerId = c.Id
where ol.Description = 'Rolex'
group by c.Name
order by c.Name;
=======
select c.Name as 'Customer', count(*) as 'Rolex orders'
from orderlines ol
join orders o
on ol.OrdersId = o.Id
join Customers c
on o.CustomerId = c.Id
where ol.Description = 'Rolex'
group by c.Name
order by c.Name;
>>>>>>> 3c0b0b2da75e5729bbb7fcec0912dec2e1c24410
