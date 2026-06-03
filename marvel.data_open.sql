SELECT * FROM marvel.data_open;

select sum(price)
from marvel.data_open;

select *
from marvel.data_open
where Category = 'Books';

select Product_ID, sum(Price)
from marvel.data_open
group by Product_ID;

SELECT sum(Discount) AS TotalDiscount
FROM marvel.data_open;

select sum(Final_Price) as TotalSales
from marvel.data_open;

select avg(Discount) as AvgDiscount
from marvel.data_open;

select Category,
sum(Discount) as TotalSales
from marvel.data_open
group by Category;

select Payment_Method,
count(*) as TotalTransactions
from marvel.data_open
group by Payment_Method;