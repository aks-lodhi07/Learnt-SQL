-- outer joins
-- 1. Left outer join

SELECT * 
FROM employee_demographics as emd
left join employee_salary as ems
	on emd.employee_id=ems.employee_id
;
-- Returns all rows from the left table and matched rows from the right table .If no match ,NULL values for right table 