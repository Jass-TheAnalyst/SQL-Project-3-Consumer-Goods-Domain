-- 5. Get the products that have the highest and lowest manufacturing costs.
-- The final output should contain these fields,
 -- product_code
-- product
-- manufacturing_cost

with cte as (
select m.product_code,p.product,round(avg(m.manufacturing_cost),2) as avg_manufacturing_cost
 from fact_manufacturing_cost m
 join dim_product p
 using (product_code)
 group by m.product_code
 order by avg_manufacturing_cost)
 
 (select  * from cte order by avg_manufacturing_cost desc limit 1)
 union
 (select  * from cte order by avg_manufacturing_cost asc limit 1);
 
 