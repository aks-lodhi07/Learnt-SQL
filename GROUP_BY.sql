#Group by clause
#its gonna group together the rows that has the same value in the specified column or columns that we are actually grouping on
#once you group those rows you can run something called aggregate functions
SELECT * 
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender;
-- by which we are grouping a table , in this case we need to either select the same column or run a aggregate function

SELECT gender,AVG(age)
from employee_demographics
group by gender ;

SELECT gender,AVG(age),MAX(age),MIN(age)
from employee_demographics
group by gender;

SELECT gender,AVG(age),MAX(age),MIN(age),COUNT(age)
from employee_demographics
group by gender;

SELECT birth_date
FROM employee_demographics
group by birth_date