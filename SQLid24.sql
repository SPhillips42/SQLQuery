select * 
from orders o 
join orderlines ol 
on ol.ordersid = o.id 
where o.id = '24';