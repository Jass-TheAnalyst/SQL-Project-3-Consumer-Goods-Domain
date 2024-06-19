-- 4. Follow-up: Which segment had the most increase in 
-- unique products
--  in -- 2021 vs 2020? The final output contains these fields,
-- segment
-- product_count_2020
-- product_count_2021
-- difference

with cte as 
(
select
p.segment,
count(distinct case when fiscal_year='2020' then p.product_code end) as product_count_2020,
count(distinct case when fiscal_year='2021' then p.product_code end) as product_count_2021
from dim_product p
join fact_sales_monthly s
on p.product_code=s.product_code
group by p.segment
)

select *,
round(((product_count_2021-product_count_2020)/product_count_2020)*100,2) as percentage_change
 from cte
 order by percentage_change desc;