import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database='lfschool'
)
plat=con.cursor()
sql='select name,sub_details.sub_name from std_details left outer join sub_details on std_details.sub=sub_details.sub_id'
plat.execute(sql)
r=plat.fetchall()
for x in r:
    print(r)