drop database if exists Parks_and_Recreation;
create database Parks_and_Recreation;
use Parks_and_Recreation;



create table employee_demographics(
employee_id int not null,
first_name varchar(50),
last_name varchar(50),
age int,
gender varchar(50),
birth_date date,
primary key(employee_id)
);

create table employee_salary(
employee_id int not null,
first_name varchar(50) not null,
last_name varchar(50) not null,
occupation varchar(50),
salary int,
dept_id int
);

insert into employee_demographics(employee_id,first_name,last_name,age,gender,birth_date)
values
(1,'Leslie','Knope',44,'Female','1979-09-25'),
(2,'Tom','Haverford',36,'Male','1987-03-04'),
(3,'April','Ludgate',29,'Female','1994-03-27'),
(4,'Jerry','Gregich',61,'male','1962-08-28'),
(5,'Donna','Meagle',46,'Female','1977-07-30'),
(6,'Ann','Perkins',35,'Female','1988-12-01'),
(7,'Chris','Traeger',43,'male','19-11-11'),
(8,'Ben','Wyatt',38,'male','1985-07-26'),
(9,'Andy','Dwyer',34,'male','1989-03-25'),
(10,'Mark','Brendanawicz',40,'male','1983-06-14'),
(11,'Craig','Middlebrooks',37,'male','1986-07-27');

insert into employee_salary(employee_id, first_name, last_name, occupation, salary, dept_id)
values
(1,'Leslie','Knope','Deputy Director of Parks and Recreation',75000,1),
(2,'Ron','Swanson','Director of Parks and Recreation',70000,1),
(3,'Tom','Haverford','Entrepreneur',50000,1),
(4,'April','Ludgate','Assistant to the Director of Parks and Recreation',25000,1),
(5,'Jerry','Gregich','Office Manager',50000,1),
(6,'Donna','Meagle','Office Manager',60000,1),
(7,'Ann','Perkins','Nurse',55000,4),
(8,'Chris','Traeger','City Manager',90000,3),
(9,'Ben','Wyatt','State Auditor',70000,6),
(10,'Andy','Dwyer','Shoe Shiner and Musician',20000,NULL),
(11,'Mark','Brendanawicz','City Planner',57000,3),
(12,'Craig','Middlebrooks','Parks Director',65000,1);

create table parks_departments(
department_id int not null auto_increment,
department_name varchar(50) not null,
primary key (department_id)
);
insert into parks_departments(department_name)
values
('Parks and Receation'),
('Animal Control'),
('Public Works'),
('Healthcare'),
('Library'),
('Finance');







