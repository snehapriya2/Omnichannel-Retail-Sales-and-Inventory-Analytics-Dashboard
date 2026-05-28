USE retail_sales;

-- 1.Show all records from the sales table
SELECT * FROM sales ; 

-- 2.Show first 10 rows from the sales table
SELECT * FROM sales limit 10 ;

-- 3.How many total records are there in the sales table?
SELECT COUNT(*) FROM sales ;

-- 4.What is the total sales for each product category?
SELECT `product category`, SUM(total_sales) AS total_revenue
FROM sales
GROUP BY `product category`;

-- 5.Show all sales data sorted by total sales (highest to lowest)
select * from sales order by total_sales desc ; 

-- 6.What is the average sales for each product category?
SELECT `product category`, AVG(total_sales) AS average_sales
FROM sales
GROUP BY `product category`;

-- 7.Show records where sales are greater than the average sales
select * from sales where total_sales > (select avg(total_sales) from sales);

-- 8.Remove the column 'total amount' from the sales table
alter table sales drop column `total amount` ;

-- 9.Show first 5 records from the sales table
select * from sales limit 5 ;

-- 10.Show sales records where total sales is between 1000 and 2000
select * from sales where total_sales between 1000 and 2000 ;

-- 11.Find the minimum quantity and maximum total sales
select min(quantity), max(total_sales) from sales ;