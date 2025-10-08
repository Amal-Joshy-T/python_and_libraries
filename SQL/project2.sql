create database onlineshopping;
use onlineshopping;
create table products(product_id int primary key,name varchar(200),price int,stock int,category varchar(200));
create table customers(customer_id int primary key,name varchar(100),email varchar(200),phone varchar(100) unique);
create table orders(order_id int primary key,customer_id int,order_date date ,total_amount varchar(200),
constraint fk_cusid foreign key (customer_id) references customers(customer_id));
create table orderdetails(orderdetail_id int,order_id int,product_id int,quantity int,
constraint fk_orderid foreign key (order_id) references orders(order_id),
constraint fk_productid foreign key (product_id) references products(product_id));