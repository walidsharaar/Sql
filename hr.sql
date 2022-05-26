/*
In this exercise we’re going to use the HR database.The HR database consists of a single table - employees, providing details about 1,000 employees working in a global tech-company
 */

-- 1. Display the id, first name in lowercase and last name in uppercase, for all employees whose employee number is in the range between 80 and 150.

select id, lower(first_name),upper(last_name)  
from employees
where id in (80,150);


-- 2.For each employee, display the:

--a. first name

--b. last name

--c. email address - The email address will be composed of the first letter of first name, concatenated with the three first letters of last name, concatenated with @gmail.com.


select first_name, last_name,
concat(first_name,last_name,'@gmail.com') as email_address
from employees;



-- 3. Repeat the last query, only this time present the values of Email in lowercase

select first_name, last_name,
concat(lower(first_name) ,lower(last_name),'@gmail.com') as email_address
from employees;


-- 4.Write a query to display the id, first_name, last_name and phone_number In each phone_number replace all dashes ('-') with dots ('.')


select id,last_name,first_name,
replace   (phone_number ,'-','.')
from employees;




-- 5. Write a query to display the id, first_name, last_name, job_title, department_id for employees with length of job_title greater than 35 characters

select id,last_name,first_name,job_title,department_id
from employees
where length(job_title)>35;


/*
6- For each employee, display :

a. first_name

b. salary

c. salary after a raise of 12% (salary * 1.12)

d. salary after a raise of 12%, expressed as a whole number (ROUND)

e. salary after a raise of 12%, rounded down to the nearest whole number
*/


select first_name, 
salary,
salary * 1.12 as "salary_raise",
round(salary*1.12,2) as "round_salary",
floor(salary*1.12) as "floor_salary" 
from employees;

/*
 7.Write a query to display:

a. first_name

b. hire_date

c. hire_date plus 10 days

d. hire_date plus 1 month

e. Difference in days between current date and hire_date
 */


select first_name , hire_date , 
       hire_date + interval  '1 DAY' AS "day_ahead", 
       hire_date + interval '1 MONTH' AS "month_ahead" , 
       date_part('day', current_date  - hire_date) AS "elapse_days"
FROM employees;

/*
 8.Write a query to display the first_name, last_name, birth_date, and age for each employee
 */

select first_name , last_name , birth_date,
	   date_part('year',current_date)-date_part('year',birth_date) as "age"
	   from employees ;


/*
9. Write a query to display the first_name, last_name, and birth_date for employees who were born on the same day and month as today.

For example: if today is 2021-02-15, we are looking for all employees born on February 15th, regardless the year

Note - depends on the current date, this query may or may not return any results.
*/
select first_name, last_name, birth_date
from   employees 
where  date_part ('month', birth_date) =   date_part ('month', current_date)
AND    date_part('day', birth_date) =   date_part('day', CURRENT_DATE)  

/*
 10. Write a query to display the id, first_name, marital_status, and salary for employees with no marital_status or salary
 */
select id,first_name,marital_status,salary
from employees 
where marital_status is null or salary is null;

/*
 11.Repeat your last query, only this time:

a. replace all marital_status NULL values with 'Unknown Status'

b. replace all salary NULL values with 0
 */

select id,first_name,
coalesce (marital_status,'Unkown Status') as "marital_status", 
coalesce (salary ,0) as "salary" 
from employees 
where marital_status is null or salary is null;