import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database='lfschool'
)
plat=con.cursor()
sql='select * from std_details right join sub_details on std_details.sub=sub_details.sub_id'
plat.execute(sql)
r=plat.fetchall()
for x in r:
    print(r)