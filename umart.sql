/**
 we're going to use the Umart database.

Umart is a fictional retail company, selling items of various categories. Inside the Umart database you’ll find a single table - Orders, which has the data of all the orders that have been placed.

**/


select * from orders; 

-- 1.Write a query to display the row_id, discount, unit_price and customer_id for all orders made by customer_id 3

select row_id,
	   discount,
	   unit_price,
	   customer_id
from orders
where customer_id = 3;
-- 2.Write a query to display the order_id, shipping_cost, and customer_name for all orders made by 'Skyler Youster'
select order_id,
	   shipping_cost,
	   customer_name,
	   customer_id
from orders
where customer_name ='Skyler Youster';

-- 3.Write a query to display the order_id, order_date, customer_region and customer_country for all orders made before '2012/01/01'
select order_id,
	   order_date,
	   customer_region,
	   customer_country
from orders
where date(order_date)< '2012/01/01';

-- 4.Write a query to display the customer_segment, customer_id, and customer_name for all customers belong to the 'Corporate' customer_segment

select customer_segment,
	   customer_id,
	   customer_name
from orders
where customer_segment= 'Corporate';


-- 5.Write a query to display the order_priority, discount, customer_name, and customer_region for all orders made in the 'Central' or 'West' regions

select order_priority,
	   discount,
	   customer_name
from orders 
where customer_region in('Central','West');

-- 6. Write a query to display the order_id, ship_mode, customer_segment, and product_id for all orders not made by a 'Small Business' or 'Corporate' customer_segment

select order_id,
	   ship_mode,
	   customer_segment,
	   product_id
from orders 
where customer_segment not in('Small Business','Corporate');




