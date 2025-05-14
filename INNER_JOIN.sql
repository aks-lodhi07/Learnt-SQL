 -- Joins
  SELECT * 
  FROM employee_demographics;
  
  SELECT *
  FROM employee_salary;
  
  -- Inner join
  -- simple join is by default inner join 
  SELECT *
  FROM employee_demographics AS emp_d
  INNER JOIN employee_salary AS emp_s
	ON emp_d.first_name=emp_s.first_name
;

  SELECT emp_d.employee_id, age, occupation
  FROM employee_demographics AS emp_d
  INNER JOIN employee_salary AS emp_s
	ON emp_d.employee_id=emp_s.employee_id
;
-- inner joins returns only the rows where there's a match in both tables --