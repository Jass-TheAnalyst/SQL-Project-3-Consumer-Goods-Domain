SELECT distinct s.product_code FROM gdb023.fact_sales_monthly s
where fiscal_year='2020';

with cte as (
SELECT distinct s.product_code FROM gdb023.fact_sales_monthly s
where s.product_code not IN (SELECT distinct s.product_code FROM gdb023.fact_sales_monthly s
where fiscal_year='2020'))
 select c.product_Code,dp.division,dp.product,dp.segment,dp.variant from cte c
 join dim_product dp
 on c.product_code=dp.product_code
 where segment='desktop';

-- isme 2020 ke kuch products repeat hore the
-- SELECT distinct s.product_code FROM gdb023.fact_sales_monthly s
-- where fiscal_year='2020';