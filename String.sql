-- String Function

SELECT LENGTH('SKYFALL');

SELECT first_name, length(first_name)
-- useful  when dealing with phone number details of people if someone type more the 11 digits than it should be removed
from employee_demographics
order by 2;

Select upper("sky");
select lower("SKY");

-- trim : remove the wide sapce from our string
select TRIM("        hfaj      ");
-- we can even trim from a particular side of our string
-- using rtrim for right side and ltrim for left side 

select first_name,
left(first_name, 4),
-- left select only the first four character of the name  
right(first_name,3),
substring(first_name,3,2),
-- SUBSTRING(COLUMN_NAME,STARTING_POSITION,NUMBER_OF CHARACTER_TO_TAKE_STARTING_FROM_THAT_POSITION)
birth_date
from employee_demographics;

-- SUBSTRING IS USEFUL WHEN LIKE TAKE AN EXAMPLE OF BIRTH_DATE
--  IF I ONLY WANT TO GET HOLD OF THE BIRTH MONTH NOT EITHER YEAR OR DAY, THEN WE CAN USE SUBSTRING

SELECT first_name,SUBSTRING(birth_date,6,2) AS birth_month
from employee_demographics;

select first_name, locate('an',first_name)
from employee_demographics;

SELECT first_name,last_name,
CONCAT(first_name," ",last_name) as full_name
from employee_demographics;