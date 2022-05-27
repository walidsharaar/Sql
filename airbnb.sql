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

-- 7. What is the average room price for each neighbourhood_group? Sort the output by the average price (descending)


-- 8. Display the amount of rooms for each price_range


-- 9. What is the highest reviews_per_month in each room_type?


-- 10. What is the average price for each number_of_reviews_range


-- 11. How many rooms can you find in each neighbourhood ? Sort the output by the number of rooms (descending)



--12. How many rooms can you find in each neighbourhood_group and neighbourhood ? Sort the output by neighbourhood_group (ascending)




-- 13. Restrict your last query to display only results from Manhattan and Queens





-- 14.What is the average number_of_reviews for each neighbourhood in Brooklyn ?
