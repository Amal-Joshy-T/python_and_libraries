create database students;
use students;
create table details(roll_num int,name varchar(100));
insert into details(roll_num,name)
values
(1,"abhay"),
(2,"ajay"),
(2,"akshay");
SET SQL_SAFE_UPDATES = 0;
update details set roll_num=3 where name="akshay";
delete from details where name='akshay';