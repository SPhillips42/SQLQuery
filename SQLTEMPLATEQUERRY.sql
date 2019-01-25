select r.description, r.status, CONCAT(u.Firstname,' ', u.lastname) as 'Full Name', p.Name, rl.Quantity, p.price, rl.quantity * p.price as 'Line Totally'
from [Requests] r
join [Users] u
on r.UsersId = u.id
join requestlines rl
on r.id = rl.RequestId
join products p
on rl.productsid = p.id
