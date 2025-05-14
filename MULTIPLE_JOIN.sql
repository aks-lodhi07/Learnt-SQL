-- Joining multiple tables

SELECT *
FROM employee_salary e1
JOIN employee_salary e2
	ON e1.employee_id=e2.employee_id
; 
 
SELECT *
FROM employee_demographics AS emp_d
INNER JOIN employee_salary AS emp_s
	ON emp_d.employee_id=emp_s.employee_id
INNER JOIN parks_departments AS pd
	ON pd.department_id=emp_s.dept_id
;