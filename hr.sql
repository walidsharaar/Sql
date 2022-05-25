/*
In this exercise we�re going to use the HR database.The HR database consists of a single table - employees, providing details about 1,000 employees working in a global tech-company
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
