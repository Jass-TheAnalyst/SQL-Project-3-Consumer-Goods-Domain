SELECT count(*) FROM gdb023.fact_sales_monthly; -- 9,71,631
-- 1. Provide the list of markets in which 
-- customer "Atliq Exclusive" operates its
-- business in the APAC region.

SELECT distinct market FROM dim_customer;

select 
distinct market from dim_customer
where customer='Atliq Exclusive'
and region='APAC';