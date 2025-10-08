create database employeepayroll;
use employeepayroll;
create table employee(employee_id int primary key,employee_name varchar(200),department varchar(200),
position varchar(200),hire_date date,base_salary int);
create table attendance(attendance_id int primary key,employee_id int,attendance_date date,status varchar(200),
constraint fk_empid foreign key (employee_id) references employee(employee_id));
create table salaries(salary_id int primary key,employee_id int,base_salary int,bonus int,deductions int,month varchar(200),
year int,constraint ck_empid foreign key(employee_id) references employee(employee_id));
create table payroll(payroll_id int primary key,employee_id int,total_salary int,payment_date date,
constraint dk_empid foreign key(employee_id) references employee(employee_id));
insert into employee(employee_id,employee_name,department,position,hire_date,base_salary)

values
(1,'Ramesh Kumar', 'Sales', 'Sales Executive','2025-03-05',35000),
(2,'Anita Sharma', 'IT', 'Software Engineer','2025-04-08',60000),
(3,'Vikram Singh', 'HR', 'HR Manager','2025-05-10',50000),
(4,'amal','it','developer','2025-06-07',40000);
DELETE FROM employee
WHERE employee_id = 4;
insert into attendance(attendance_id,employee_id,attendance_date,status)
values
(101,1, '2025-10-07', 'Present'),
(102,2, '2025-10-07', 'Absent'),
(103,3, '2025-10-07', 'Leave');
insert into salaries(salary_id,employee_id,base_salary,bonus,deductions,month,year)
values
(201,1,35000,1000,500,'october',2025),
(202,2,60000,1000,500,'october',2025),
(203,3,50000,1000,500,'october',2025);
SELECT 
    employee_id,
    SUM(base_salary + bonus - deductions) AS total_salary
from
    salaries
group by  
    employee_id;
update salaries set bonus=2000,deductions=1000 where employee_id=1;
select
    e.employee_id,
    e.employee_name,
    s.month,
    e.base_salary,
    s.bonus,
    s.deductions,
    (s.base_salary + s.bonus - s.deductions) as total_salary
from
    employee as e INNER JOIN salaries as s ON e.employee_id = s.employee_id;
    
select * from employee as e inner join salaries as s on e.employee_id = s.employee_id
inner join attendance as a on a.employee_id = s.employee_id;

    
    
    


