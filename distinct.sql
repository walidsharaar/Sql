-- select unique values from the table

select distinct last_name
from
actor;

--- Select all actor and order them desc

select first_name, last_name
from actor
order by first_name desc;

--- Select all unique actor name  and order them desc

select distinct first_name, last_name
from actor
order by first_name desc;