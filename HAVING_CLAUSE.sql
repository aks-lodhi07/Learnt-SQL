-- HAVING vs WHERE


-- SELECT gender,AVG(age)
-- FROM employee_demographics
-- WHERE AVG(age)>40
-- GROUP BY gender;


-- here in the above query error occured because 
--  1. where clause: filter rows before aggregation(GROUP BY),Cannot contain aggregate function like avg(),sum(),count(),etc,operates on individual rows
--  2. having clause:filter groups after aggregation,can contain aggregate functions ,operates on grouped data

--  SQL Execution Order --
# 1.FROM(identifies tables)
# 2.WHERE(filters row)
# 3.GROUP BY(forms groups)
# 4.HAVING(filters group)
# 5.SELECT(projects columns)
# 6.ORDER BY(sorts results in ascending or descending order according to the given abrevation ASC or DESC by defaut it is ASC)  

SELECT gender,AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age)<40;

select occupation,AVG(salary)
from employee_salary
WHERE occupation LIKE "%manager%"
GROUP BY occupation
HAVING AVG(salary)>75000;