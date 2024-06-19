-- 6. Generate a report which contains the top 5 customers who received an
-- average high pre_invoice_discount_pct for the fiscal year 2021 and in the
-- Indian market. The final output contains these fields,
 -- customer_code
-- customer
-- average_discount_percentage

select c.customer_code,c.customer,
round(pi.pre_invoice_discount_pct*100,2) as pre_invoice_discount_percentage
 from dim_customer c
join
fact_pre_invoice_deductions pi
on c.customer_code=pi.customer_code
where pi.fiscal_year='2021' and c.market='India'
order by pre_invoice_discount_percentage desc limit 5;
