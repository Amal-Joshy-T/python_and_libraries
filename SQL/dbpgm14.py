import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database='lfschool'
)
plat=con.cursor()
sql='select distinct(status),count(status) from std_fee group by status';
plat.execute(sql)
r=plat.fetchall()
for x in r:
    print(r)
