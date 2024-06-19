-- 8. In which quarter of 2020, got the maximum total_sold_quantity? The final
-- output contains these fields sorted by the total_sold_quantity,
-- Quarter
-- total_sold_quantity
with cte as (
select * ,
case 
when month(date) IN (9,10,11) then "Q-1"
when month(date) IN (12,1,2) then "Q-2"
when month(date) IN (3,4,5) then "Q-3"
when month(date) IN (6,7,8) then "Q-4"
end as qtr
from fact_sales_monthly 
where fiscal_year=2020 
order by sold_quantity desc)

select qtr,concat(round(sum(sold_quantity)/1000000,2),"M") as total_sold_quantity from cte 
group by qtr 
order by total_sold_quantity desc;