Insert into Customers
(Name, City, State, Sales, Active)
values
('MAX Technical Training', 'Mason', 'OH', 1, 1)

Insert into Orders
( Date, Description)
values
('2018-09-01', 'First maz order for widgets')

Insert into OrderLines
(OrdersId, Product, Price, Quantity)
values
(12, 'Echo Dot', 99.99, 1)

Insert into OrderLines
(OrdersId, Product, Price, Quantity)
values
(11, 'Echo Dot', 39.99, 1)

/*insert into Customers 
(Name, City, State, Sales, Active) 
values
('Seth inc.' , 'Mason', 'OH', 9999999.99, 1);*/
select * from OrderLines, Orders, Customers