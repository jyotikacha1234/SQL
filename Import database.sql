SELECT * FROM orders.order_data;
select order_id, order_date,country,city,region from order_data;

select distinct(category)from order_data;

select order_id as IDs from order_data;

select * from order_data where category='Technology';

select * from order_data where quantity < 10;

select * from order_data where sales>2000;

select * from order_data where state="Texas" and category= "technology";

select * from order_data where quantity > 5 and region= "East" and sub_category= "Phones";

select * from order_data where category = "Technology" or category="Office Supplies";

select * from order_data 
where sub_category= "Phones" 
or sub_category= "Paper" or sub_category= "Art";

select * from order_data where not category= "Technology";

select region from order_data where not region= "central";

use orders;

select * from orders.order_data;

#Fetch all the records related to technology and order by orderdate in ascending order
select * from order_data where category= "Technology" order by order_date asc;

#fetch all the records related to texas and order by orderdate in decending order
select * from order_data where state= "Texas" order by order_date desc;

#fetch all the records related to corporate and order by subcategory in decending order
select * from order_data where segment= "corporate" order by sub_category desc;

#fetch all the records related south and order by sales in ascending order
select region, sales from order_data where region = "South" order by sales asc;

select * from order_data;

#check are there any null values in category column
select * from order_data where category is not null;

select * from order_data where category is null;

#fetch top 5 orders with highest sales in Technology
select * from order_data where category = "technology" order by sales desc limit 5; 

#fetch top 5 orders with lowest profit in phones
select * from order_data where sub_category = "Phones" order by profit asc limit 3;

select * from order_data where sub_category in('paper','phones','art');

select * from order_data where state in('california','Texas','florida');

#fetch all the records between 02-01-2019 and 28-11-2020
select * from order_data where order_date between "02-01-2019" and "28-11-2020";

SELECT *
FROM order_data
WHERE STR_TO_DATE(order_date,'%d-%m-%Y')
BETWEEN '2019-01-02' AND '2020-11-28';

#fetch all the sales records between 5 and 1000
select * from order_data where sales between 500 and 1000;

Use orders;

select * from order_data;

select	* from Order_data where region like "W%";

select * from order_data where Category like "%gy%";

#Aggregate Function

#find numbers of orders realted to Technology
select count(*)from order_data where category= "Technology";

#find count of unique categories
select count(distinct category) from order_data;

#find count of unique Sub_categories
select count(distinct Sub_category) from order_data;

#find average of sales
select avg(Sales)from order_data;

#find average of quantity
select avg(Quantity)from order_data;

#find sum of sales in texas
select sum(sales) from order_data where State = "Texas";

# find least sales in technology
select min(sales) from order_data where category = "technology";

# find least sales in phones
select min(sales) from order_data where sub_category = "Phones";

# find highest sales in technology
select max(sales) from order_data where Category= "Technology";

#find highest profit in corporate
select max(profit) from order_data where segment = "corporate";

#find total sales in different categories
select sum(sales), category from order_data group by category ;	

# find highest sales for each segment
select max(sales), segment from order_data group by segment;

# find numbers of orders based on category
select count(order_ID), category from order_data group by category;

# find total sales in descending order over different region 
select sum(sales),region 
from order_data group by 
region order by 
sum(sales) desc;

select sum(sales), region from order_data group by region order by region desc;

# find subcategories which has got orders greater than 1000
select count(order_id), sub_category 
from order_data 
group by sub_category 
having count(order_id)>5;


















