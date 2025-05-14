-- Right outer join

SELECT * 
FROM employee_demographics as emd
right join employee_salary as ems
	on emd.employee_id=ems.employee_id
;

-- Returns all rows from the right table and match rows from the left table . If no match,NULL values for left table