select [Name], [sales], CONCAT(City, ', ', [State]) as 'City, State' from customers where [city] = 'Cincinnati'and sales >= 30000 order by sales desc;