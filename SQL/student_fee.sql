use lfschool;
create table std_fee(fees_id int primary key,std_id int not null,
amount int not null,status varchar(200) not null,a_date date not null,
constraint fk_stdid foreign key (std_id) references std_details(id));