use lfschool;
create table std_fee(fees_id int primary key,std_id int not null,
amount int not null,status varchar(200) not null,a_date date not null,
constraint fk_stdid foreign key (std_id) references std_details(id));

insert into std_fee(fees_id,std_id,amount,status,a_date)
values
(1,1,10000,'paid','2024-10-01'),
(2,2,12000,'pending','2024-12-30'),
(3,3,5000,'paid','2024-12-30'),
(4,4,5000,'pending','2024-12-30'),
(5,5,15000,'paid','2024-12-30');
select * from std_fee;
select * from std_details;
select * from sub_details;
select id,name,age from std_details;
select * from std_fee
order by amount desc;
select * from std_fee
order by amount asc;
select distinct(status),count(status) from std_fee group by status;
select*from std_fee where status='paid' limit 3;
select*from std_fee where status='paid' limit 3 offset 2;
select min(amount) from std_fee;
select max(amount) from std_fee;
select avg(amount) from std_fee;
select count(fees_id) from std_fee;
select sum(amount) from std_fee;



