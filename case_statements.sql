-- Case Statement

SELECT first_name,
last_name,age,
CASE
	WHEN age<=30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN "Old"
END AS age_bracket 
FROM employee_demographics;


-- Pay increase and bonus
-- <50000=5%
-- >50000=%7
-- Finance = 10% bonus

SELECT first_name,last_name,salary,
CASE 
	WHEN salary<50000 THEN salary+(salary*0.05)
    WHEN salary>=50000 THEN salary+(salary*0.07)
END AS New_salary,
CASE
    WHEN dept_id=6 THEN salary+(salary*0.1)
END Bonus
FROM employee_salary;

select *
from employee_salary