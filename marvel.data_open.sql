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

select *
from marvel.data_open
order by Discount asc;

select marvel.data_open.User_ID,
Product_ID, marvel.data_open.Category,
marvel.data_open.Final_Price
from marvel.data_open;

create view SalesSummary as
select Category,
        sum(Final_Price) as TotalSales,
        avg(Final_Price) as AverageSales
from marvel.data_open
group by Category;

select * from SalesSummary;

create view PaymentSummary as
select Payment_Method,
        count(*) as TotalTransactions,
        sum(Final_Price) as TotalRevenue
from marvel.data_open
group by Payment_Method;

select * from PaymentSummary;

select Category,
     count(*) as TotalOrders,
	sum(Final_Price) as TotalRevenue,
    avg(Final_Price) as AverageRevenue
 from marvel.data_open
 group by Category 
 order by TotalRevenue desc;
 
 SELECT month(Purchase_Date) as SalesMonth,
        sum(Final_Price) as TotalRevenue
        from marvel.data_open
        group by month(Purchase_Date);
        
        select Category,
        avg(Discount) as AverageDiscount
        from marvel.data_open
        group by Category;
