-- 10. Get the Top 3 products in each division that have a high
-- total_sold_quantity in the fiscal_year 2021? The final output contains these
-- fields,
-- division
-- product_code
-- product
-- total_sold_quantity
-- rank_order
with product_details as (
select p.division,s.product_code,Concat(p.product,' + ',p.variant) as 'product_name + variant',sum(s.sold_quantity) as total_sold_quantity from fact_sales_monthly s
join dim_product p
ON s.product_code=p.product_code
where s.fiscal_year=2021
group by p.division,s.product_code,p.product)

select * from (
select *,
rank() over(partition by division order by total_sold_quantity desc)  as rnk
 from product_details) as products_with_rank where rnk<=3;