/*
In this exercise we’re going to use the BookReview database.

BookReview is a fictional social cataloging website that allows individuals to search its database of books, and rate them (available to registered users only).
*/

/*
 * 1. a. Write a query to display the first_name, last_name, email, birthdate, and gender for all users

b. Restrict your query to display only users who were born on 2002

c. Write a query to display the number of users who were born each year. Sort the output by year (ascending)
d. Repeat your last query, only this time display only years with more than 54 users (who were born on that year)
 */


select first_name,last_name,email,birthdate,g.gender 
from users u inner join genders g 
on u.gender_id = u.gender_id ;


select first_name,last_name,email,birthdate,g.gender 
from users u inner join genders g 
on u.gender_id = u.gender_id 
where date_part('year',u.birthdate )  = 2002;

select date_part ('year', u.birthdate) AS "year_of_birth", count(*) AS "num_of_users"
from   users u join genders g 
on u.gender_id = g.gender_id
group by date_part ('year', u.birthdate)
order by date_part('year', u.birthdate);


select date_part('year', u.birthdate) AS "year_of_birth", count(*) AS "num_of_users"
from   users u join genders g 
on u.gender_id = g.gender_id
group by date_part('year', u.birthdate)
having count(*) > 54
order by date_part('year', u.birthdate);

/*
 * 2.a. Write a query to display the first_name, last_name, email, birthdate, country and city for all users

b. Restrict your query to display only users living in the UK

c. Write a query to break down the number of users living in each country and city. Sort the output by the number of users (descending)

d. Restrict your query to count only users above the age 30
 */

select u.first_name, u.last_name, u.email, u.birthdate, l.country, l.city
from users u join locations l 
on u.location_id = l.location_id;

select u.first_name, u.last_name, u.email, u.birthdate, l.country, l.city
from users u join locations l 
on u.location_id = l.location_id
where country = 'United Kingdom';

select l.country, l.city, count(*) as "number_of_users"
from users u join locations l 
on u.location_id = l.location_id
group by l.country, l.city
order by count(*) desc;


select l.country, l.city, count(*) as "number_of_users"
from users u join locations l 
on u.location_id = l.location_id
where date_part ('year', current_date) - date_part ('year', birthdate) > 30
group by l.country, l.city
order by count(*) desc;
/*
  3. a. Write a query to display the first_name, last_name, email, age, and occupation_name for all users

b. Write a query to display the average age for each occupation

c. Restrict your query to display only occupations with average age greater than 40
 */

select u.first_name, u.last_name, u.email, 
       date_part('year', current_date) - date_part('year', u.birthdate) AS "age", 
     o.occupation_name
from users u join occupations o 
on u.occupation_id = o.occupation_id 


select avg(date_part('year', current_date) - date_part('year', u.birthdate)) AS "avg_age", o.occupation_name
from users u join occupations o 
on u.occupation_id = o.occupation_id 
group by o.occupation_name;


select avg(date_part('year', current_date) - date_part('year', u.birthdate)) AS "avg_age", o.occupation_name
from users u join occupations o 
on u.occupation_id = o.occupation_id 
group by o.occupation_name
having avg(date_part('year',current_date)-date_part('year',u.birthdate))>40;  

/*
 4.Write a query to display the average num_pages for each author. Sort the output by the average number of pages (descending)
 */

select authors, avg(num_pages) AS "average_num_pages"
from books b join authors a 
on b.author_id = a.author_id
group by authors
order by avg(num_pages) desc;



/*
5.Write a query to display the number of books for each language, Sort the output by the number of books (descending)
 */


select language_name, count(*) AS "num_of_book"
from books b join languages l 
on   b.language_code = l.language_code
group by l.language_name
order by count(*) desc;




/*
6. Write a query to display the number of unique publishers by each language, Sort the output by the number of unique publishers (descending)
 */


select l.language_name, count(distinct publisher_id) as "num_of_publishers"
from books b join languages l
on   b.language_code = l.language_code
group by l.language_name
order by count(distinct publisher_id) desc;