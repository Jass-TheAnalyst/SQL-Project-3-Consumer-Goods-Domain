# SQL-Project-Consumer-Goods-Analytics
This project provides insights to top level management in Consumer Goods Domain.
<img src="https://insideretail.asia/wp-content/uploads/2020/09/technicalconsumergoods.jpg" alt="fmcg" height="400" width="1000">

<ul>
  <li><b>Title</b>&nbsp:&nbspData Analytics using SQL
  <li><b>Created By</b>&nbsp:&nbspJasleen Kaur
  <li><b>Tool Used</b>&nbsp:&nbspMySQL Workbench
 </ul>
 
 <hr>
 
 <h1>SQL - Microsoft Power BI Integration Project</h1>
 <h3>Database, Database Tool and Visualization Tool</h3>
 <ul>
  <li><h4>MySQL</h2></li>
  <li><h4>MySQL Workbench</h2></li>
  <li><h4>Microsoft Power BI</h2></li>
  </ul>
  <hr>
  <h1>Objective : Provide Insights to Management in Consumer Goods Domain</h1>
  <h3>Problem Statement</h3>
  <p>Atliq Hardwares (imaginary company) is one of the leading computer hardware producers in India and well expanded in other
  countries too.However, the management noticed that they do not get enough insights to make quick and smart data-informed decisions.
  They want to expand their data analytics team by adding several junior data analysts. Tony Sharma, their data analytics director 
  wanted to hire someone who is good at both tech and soft skills. Hence, he decided to conduct a SQL challenge which will 
  help him understand both the skills.
</p>
    <hr>
  <h3>Comprehensive overview of the tables present in database. It includes information for six main tables:</h3>
<ul>
<li> dim_customer: contains customer-related data</li>
<li> dim_product: contains product-related data</li>
<li>fact_gross_price: contains gross price information for each product</li>
<li> fact_manufacturing_cost: contains the cost incurred in the production of each product</li>
<li> fact_pre_invoice_deductions: contains pre-invoice deductions information for each product</li>
<li> fact_sales_monthly: contains monthly sales data for each product.</li>
 </ul> 
<hr>
<h3>Table Wise Description</h3>
  <h3>Column Description for dim_customer table:</h3>
<ul>
  <li><b>customer_code:</b> The 'customer_code' column features unique identification codes for every customer in the dataset. These codes can be used to track a customer's sales 		history, demographic information, and other relevant details. For example, the codes could look like '70002017', '90005160', and '80007195' respectively.
</li>
  <li><b>customer:</b> The 'customer' column lists the names of customers, for example 'Atliq Exclusive', 'Flipkart', and 'Surface Stores' etc.</li>
  <li> <b>platform:</b> The 'platform' column identifies the means by which a company's products or services are sold. "Brick & Mortar" represents the physical store/location, and 			"E-Commerce" represents online platforms.</li>
  <li><b>channel:</b> The 'channel' column reflects the distribution methods used to sell a product. These methods include "Retailers", "Direct", and "Distributors". Retailers 				refer to physical or online stores that sell products to consumers. Direct sales refer to sales made directly to consumers through a company's website or other direct means, and distributors refer to intermediaries or middlemen between the manufacturer and retailer or end consumers.</li>
<li><b>market:</b> The 'market' column lists the countries in which the customer is located.</li>
<li><b>region:</b> The 'region' column categorizes countries according to their geographic location, including "APAC" (Asia Pacific), "EU" (Europe), "NA" (North America), and 			    "LATAM" (Latin America).</li>
<li><b>sub_zone:</b> "The 'sub_zone' column further breaks down the regions into sub-regions, such as "India", "ROA" (Rest of Asia), "ANZ" (Australia and New Zealand), "SE" 				  Southeast Asia), "NE" (Northeast Asia), "NA" (North America), and "LATAM" (Latin America)."</li>

</ul>

<h3>Column Description for dim_product table:</h3>
<ul>
<li><b>product_code:</b>The 'product_code' column features unique identification codes for each product, serving as a means to track and distinguish individual products within a 		database or system.</li>
<li><b>division:</b>The 'division' column categorizes products into groups such as "P & A" (Peripherals and Accessories), "N & S" (Network and Storage) and "PC" (Personal 				 Computer).</li>
<li><b>segment:</b>The 'segment' column categorizes products further within the division, such as "Peripherals" (keyboard, mouse, monitor, etc.), "Accessories" (cases, cooling 			solutions, power supplies), "Notebook" (laptops), "Desktop" (desktops, all-in-one PCs, etc), "Storage" (hard disks, SSDs, external storage), and "Networking" (routers, switches, modems, etc.).</li>
<li><b>category:</b>The 'category' column classifies products into specific subcategories within the segment.
</li>
<li><b>product:</b>The 'product' column lists the names of individual products, corresponding to the unique identification codes found in the 'product_code' column.
</li>
<li><b>variant:</b>The "variant" column classifies products according to their features, prices, and other characteristics. The column includes variants such as "Standard", 				"Plus", "Premium" that represent different versions of the same product.</li>
</ul>

<h3>Column Description for fact_gross_price table:</h3>
<ul>
<li><b>product_code:</b>The 'product_code' column features unique identification codes for each product.</li>
<li><b>fiscal_year:</b>The 'fiscal_year' column contains the fiscal period in which the product sale was recorded. A fiscal year is a 12-month period that is used for accounting 			purposes and often differs from the calendar year. For Atliq Hardware, the fiscal year starts in September. The data available in this column covers the 				fiscal years 2020 and 2021.</li>
<li><b>gross_price</b>The 'gross_price' column holds the initial price of a product, prior to any reductions or taxes. It is the original selling price of the product.
</li>
</ul>

<h3>Column Description for fact_manufacturing_cost:
</h3>
<ul>
<li><b>product_code:</b>The 'product_code' column features unique identification codes for each product.
</li>
<li><b> cost_year:</b>The "cost_year" column contains the fiscal year in which the product was manufactured.</li>
<li><b>manufacturing_cost:</b>The "manufacturing_cost" column contains the total cost incurred for the production of a product. This cost includes direct costs like
raw materials, labor, and overhead expenses that are directly associated with the production process.
</li>
</ul>

 
<h3>Column Description for fact_pre_invoice_deductions:
</h3>
<ul>
<li><b>customer_code:</b>The 'customer_code' column features unique identification codes for every customer in the dataset. These codes can be used to track a customer's sales 			history, demographic information, and other relevant details. For example, the codes could look like '70002017', '90005160', and '80007195' respectively.</li>
<li><b>fiscal_year:</b>The "fiscal_year" column holds the fiscal period when the sale of a product occurred.
</li>
<li><b>pre_invoice_discount_pct:</b>The "pre_invoice_discount_pct" column contains the percentage of pre-invoice deductions for each product. Pre-invoice deductions are 
discounts that are applied to the gross price of a product before the invoice is generated, and typically applied to large orders or 							     long-term contracts.
</li>

</ul>
 
<h3>Column Description for fact_sales_monthly:
</h3>
<ul>
<li><b>date:</b>The "date" column contains the date when the sale of a product was made, in a monthly format for 2020 and 2021 fiscal years. This information can be used
to understand the sales performance of products over time.</li>
<li><b>product_code:</b>The "product_code" column contains a unique identification code for each product. This code is used to track and differentiate individual 
products within a database or system.
</li>
<li><b>customer_code:</b></li>
<li><b>The 'customer_code' column features unique identification codes for every customer in the dataset. These codes can be used to track a customer's sales 			history, demographic information, and other relevant details. For example, the codes could look like '70002017', '90005160', and '80007195' respectively.
</b></li>
<li><b>sold_quantity:</b>The "sold_quantity" column contains the number of units of a product that were sold. This information can be used to understand the sales volume ofproducts and to compare the sales volume of different products or variants.
</li>
<li><b>fiscal_year: </b>The "fiscal_year" column holds the fiscal period when the sale of a product occurred.
</li>
</ul>
<hr>
  
  <h3>SQL Concepts Used</h3>
  <ul>
  <li>DDL</li>
  <li>DML</li>
  <li>Joins(LEFT, RIGHT, INNER, FULL, CROSS)</li>
  <li>Subqueries</li>
  <li>CTEs</li>
  <li>Views</li>
  <li>Case statements</li>
  <li>Aggregate Functions</li>
  <li>Stored Procedures</li>
  <li>Window Functions</li>
  <li>SQL Basics (SELECT, WHERE, BETWEEN, GROUP BY, ORDER BY, etc.)</li>
  </ul>
  
  <hr>
  
  
  
  
