-- Self join
-- Joining a table  to itself(useful for hierarchical data)
select *
from employee_salary;

SELECT e1.employee_id as emp_santa,
e1.first_name as first_name_santa,
e1.last_name as last_name_santa,
e2.employee_id as emp_id,
e2.first_name as first_name_emp,
e2.last_name as last_name_emp
FROM employee_salary e1
JOIN employee_salary e2
	ON e1.employee_id+1=e2.employee_id
;
 