create database studentresult;
use studentresult;
create table students(student_id int primary key,name varchar(200),department varchar(200),year int);
create table subjects(subject_id int primary key,subject_name varchar(200),credits int); 
create table marks(
mark_id int primary key,
std_id int,
subject_id int,
marks int,
CONSTRAINT FK_stdid FOREIGN KEY (std_id) REFERENCES students(student_id),
CONSTRAINT FK_subid FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);
insert into students(student_id,name,department,year)
values
(1,'abhay','electornics',2018),
(2,'ajay','mech',2018),
(3,'akshay','electronics',2018),
(4,'amal','mech',2018);
insert into subjects(subject_id,subject_name,credits)
values
(1,'maths',100),
(2,'physics',100),
(3,'chemistry',100),
(4,'english',100);
use studentresult;
insert into marks(mark_id,std_id,subject_id,marks)
values
(1,1,1,35),
(2,1,2,50),
(3,1,3,55),
(4,1,4,65),
(5,2,1,65),
(6,2,2,90),
(7,2,3,55),
(8,2,4,65),
(9,3,1,56),
(10,3,2,14),
(11,3,3,12),
(12,3,4,10),
(13,4,1,50),
(14,4,2,90),
(15,4,3,98),
(16,4,4,78);
select * from marks;
select* from students;
select * from subjects;
select student_id,name,marks,subject_id from students inner join marks on students.student_id = marks.std_id
order by marks desc;
select student_id,name,marks,subject_id from students inner join marks on students.student_id=marks.std_id
where subject_id = 1 order by marks desc limit 3;
select student_id,name,marks,subject_id from students inner join marks on students.student_id=marks.std_id
where subject_id = 2 order by marks desc limit 3;
select student_id,name,marks,subject_id from students inner join marks on students.student_id=marks.std_id
where subject_id = 3 order by marks desc limit 3;
select student_id,name,marks,subject_id from students inner join marks on students.student_id=marks.std_id
where subject_id = 4 order by marks desc limit 3;
select s.student_id,s.name,s.department,avg(m.marks) as avg_mark from students as s inner join marks as m on s.student_id=m.std_id group by s.student_id,s.name,s.department;
select student_id,name,marks,subject_id from students 
inner join marks on students.student_id=marks.std_id
group by marks
having count(student_id)>2;


SELECT students.student_id, students.name, COUNT(*) AS failed_subjects
FROM students
INNER JOIN marks ON students.student_id = marks.std_id
WHERE marks.marks < 40
GROUP BY students.student_id, students.name
HAVING COUNT(*) > 2;

select students.student_id,students.name,count(student_id) as failed
from students
inner join marks on  students.student_id = marks.std_id
where marks.marks<40
group by students.student_id
having count(student_id)>2;


