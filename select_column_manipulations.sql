
-- retreive all data from table
select * from actor;

select first_name, actor_id
from actor;

-- Calculation on columns
select 
name,Indepyear , 2020 - Indepyear ,population, gnp, gnp/population*1000 as gnp_per_capita 
from country;