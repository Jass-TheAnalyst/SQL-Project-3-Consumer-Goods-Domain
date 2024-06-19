-- Q-2 What is the percentage of 
-- unique product increase in 2021 vs. 2020? 
 -- The final output contains these fields,
 -- unique_products_2020
-- unique_products_2021
-- percentage_chg
 
 with cte as(
 SELECT 
  COUNT(DISTINCT case when fiscal_year='2020' then product_code end) 
  as unique_products_2020,
  COUNT(DISTINCT case when fiscal_year='2021' then product_code end) 
  unique_products_2021
FROM fact_sales_monthly)

select *,round(
((unique_products_2021-unique_products_2020)/unique_products_2020)*100
,2) as percentage_change
from cte;

 
-- round((unique_products_2021-unique_products_2020)/unique_products_2020,2) as percentage_change

-- If you wanted to refine your query even more by running your
-- aggregations against a 
-- limited set of the values in a 
-- column you could use the FILTER keyword. 