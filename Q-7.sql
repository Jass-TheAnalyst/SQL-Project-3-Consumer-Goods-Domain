
-- 7. Get the complete report of the Gross sales amount for the customer “Atliq
-- Exclusive” for each month. This analysis helps to get an idea of low and
-- high-performing months and take strategic decisions.
-- The final report contains these columns:
-- Month
-- Year
-- Gross sales Amount 
with cte as(
select s.date,
s.fiscal_year,round(sum((s.sold_quantity * g.gross_price))/1000000,2) as total_gross_price from fact_sales_monthly s
join
fact_gross_price g
ON
s.product_code=g.product_code and
s.fiscal_year=g.fiscal_year
where 
customer_code IN 
(SELECT customer_code FROM dim_customer where customer="Atliq Exclusive")
group by s.date
order by date)


select concat(monthname(date),"-",year(date)) as "month-year",
fiscal_year,
total_gross_price,
rank() over(partition by fiscal_year order by total_gross_price) as rnk
from cte;