/*
1. [String Functions]

a. Write a query to display the job_id, job_title, salary_estimate_min, salary_estimate_max

b. Repeat your last query, only this time display only the job adverts where salary_estimate_max is less than 105,000
*/

select job_id,job_title,salary_estimate_min,salary_estimate_max
from jobs ;



select job_id, job_title, salary_estimate_min, salary_estimate_max
from jobs
where cast(replace(salary_estimate_max,'K','') AS int) < 105;

/*
 2. Write a query to display the company_name, company_rank, company_size_min, and company_size_max
for companies with more than 60 employees and less than 120 employees
 */

select company_name, company_rank, company_size_min,company_size_max
from jobs 
where cast(replace(company_size_min,'Employees','') as int)> 60
and 
cast(replace(company_size_max,'Employees','') as int)< 120

/*
 3. Write a query to display the :

a. job_id

b. job_title in uppercase

c. company_name in lowercase
 
 */

select job_id,upper(job_title),lower(company_name)
from jobs;

/*
 4. Write a query to display the:

a. job_id, company_name, headquarters_of_company

b. first letter of company_name

c. first letter of headquarters_of_company
 */

select job_id,company_name,headquarters_of_company,
left(company_name,1) as initial_company,
left(headquarters_of_company,1) as initial_head
from jobs;


/*
 5. Write a query to display the :

a. job_id

b. company_name

c. headquarters_of_company

d. company_code - a new column containing a concatenation of: the first letter of company_name and the first letter of headquarters_of_company
For example : for Google located in Austin, the company_code would be: GA
 */

select job_id, company_name, headquarters_of_company,
concat(left(company_name,1),left(headquarters_of_company,1))  as initial
from jobs;

/*
 6. Repeat your last query, only this time display the company_code in lowercase
 
 */


select job_id, lower(company_name) as company_name , headquarters_of_company,
concat(left(company_name,1),left(headquarters_of_company,1))  as initial
from jobs;

/*
 7. Write a query to display the job titles with length greater than 29
 */


select distinct job_title  
from jobs
where length(job_title)>29;

/*
8. Write a query to display the:

a. company_name

b. company_rank

c. company_market_value

d. company_market_value rounded using ROUND function with precision of 2 digits

e. company_market_value rounded down using FLOOR

f. company_market_value rounded up using ceil
*/
select company_name,company_rank,company_market_value,
round(company_market_value,2) as roundedValue,
floor(company_market_value) as flooredValue,
ceiling(company_market_value) as ceilValue
from jobs;