-- LIMIT AND ALIASING 
# 1.LIMIT
SELECT *
FROM employee_demographics
ORDER BY age desc
LIMIT 5 ;#will show the top five oldest persons

# and if i'll write LIMIT 5,2  it'lll start from the 5th row and show the next 2 rows after the row 5

-- Aliasing
SELECT gender ,avg(age) as avg_age
from employee_demographics
group by gender 
having avg_age>40