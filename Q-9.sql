-- 9. Which channel helped to bring more gross sales in the fiscal year 2021
-- and the percentage of contribution? The final output contains these fields,
-- channel
-- gross_sales_mln
-- percentage

with gross_sales_details as(
select s.date,s.product_code,c.channel,s.customer_code,s.sold_quantity,s.fiscal_year,g.gross_price,
round((sold_quantity * gross_price),2) as total_gross_price
 from fact_sales_monthly s
 join dim_customer c On s.customer_code=c.customer_code
join fact_gross_price g
ON s.product_code=g.product_code  and  s.fiscal_year=g.fiscal_year
where s.fiscal_year=2021
)
,
 sales_by_channel as (
select channel,round(sum(total_gross_price)/1000000,2) as gross_sales_mln
from gross_sales_details
group by channel
order by gross_sales_mln  desc)

select *,round((gross_sales_mln/(select sum(gross_sales_mln) from sales_by_Channel)*100),2) as percentage
from sales_by_channel;