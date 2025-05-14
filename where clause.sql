#WHERE CLAUSE
SELECT *
FROM employee_demographics
WHERE gender!='Female';

#locgical operator AND OR NOT
SELECT *
FROM employee_demographics
WHERE birth_date>'1985-01-01' AND gender='male';

SELECT *
FROM employee_demographics
WHERE (first_name='Leslie' and age=44) or age>55;

-- LIKE STATEMENT
-- % :- for anything, _ for specific value
SELECT *
FROM employee_demographics
WHERE first_name LIKE 'Jer%'; #it means there is any no. of letter after 'jer' but should start with jer only

SELECT *
FROM employee_demographics
WHERE first_name LIKE '%a%'; # it means there is any no. of letter before 'a' and after 'a'

SELECT *
FROM employee_demographics
WHERE first_name LIKE 'a__'; #_ _ means there is exactly 2 letters after 'a'

