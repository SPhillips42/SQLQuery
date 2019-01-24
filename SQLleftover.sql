<<<<<<< HEAD
--select * from customers where id = 1;
select o.date as 'order date', o.description as 'Description', c.name as 'Customer Name',
       ol.product, ol.Description, ol.price, ol.quantity
from orders o
join customers c
on customerid = c.id
join orderlines ol
on ol.ordersid = o.id
=======
--select * from customers where id = 1;
select o.date as 'order date', o.description as 'Description', c.name as 'Customer Name',
       ol.product, ol.Description, ol.price, ol.quantity
from orders o
join customers c
on customerid = c.id
join orderlines ol
on ol.ordersid = o.id
>>>>>>> 3c0b0b2da75e5729bbb7fcec0912dec2e1c24410
--update order set customerid = 999 where id = 1;