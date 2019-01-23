--select * from customers where id = 1;
select o.date as 'order date', o.description as 'Description', c.name as 'Customer Name',
       ol.product, ol.Description, ol.price, ol.quantity
from orders o
join customers c
on customerid = c.id
join orderlines ol
on ol.ordersid = o.id
--update order set customerid = 999 where id = 1;