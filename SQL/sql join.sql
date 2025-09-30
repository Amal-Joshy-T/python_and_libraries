use lfschool;
select * from std_details inner join sub_details on std_details.sub=sub_details.sub_id;
select name,email,sub_name from std_details inner join sub_details on std_details.sub=sub_details.sub_id;

SELECT *
FROM std_details 
LEFT JOIN sub_details 
ON std_details.sub = sub_details.sub_id;
select * from std_details right join sub_details on std_details.sub=sub_details.sub_id;
select name,sub_details.sub_name from std_details left outer join sub_details on std_details.sub=sub_details.sub_id;

select name,sub_details.sub_name from std_details right outer join sub_details on std_details.sub=sub_details.sub_id;
select * from std_details cross join std_fee;
select a.name,b.name from std_details a,std_details b where a.id=b.id;

