/*
Since 2008, guests and hosts have used Airbnb to expand on traveling possibilities and present a more unique, personalized way of experiencing the world. 
The Airbnb database consists of a single table - rooms which describes the listing activity in NYC, NY for 2019.
*/

-- 1. Display the average room price (across the entire table)

select avg(price)
from rooms;

-- 2. Display the highest number of reviews

select * from rooms;

select max(number_of_reviews)
from rooms;

-- 3. Display the lowest reviews_per_month
select min(minimum_nights)
from rooms;

-- 4. Display the number of (not null) values in reviews_per_month

select count(reviews_per_month)
from rooms;


-- 5.List the distinct values in neighbourhood_group (no group function is required, just a simple DISTINCT)

select distinct neighbourhood_group
from rooms;

-- 6. Display the number of unique values in neighbourhood_group

select  count(distinct neighbourhood_group)
from rooms;


