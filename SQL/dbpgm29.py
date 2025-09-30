import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database='lfschool'
)
plat=con.cursor()
sql='select a.name,b.name from std_details a,std_details b where a.id=b.id'
plat.execute(sql)
r=plat.fetchall()
for x in r:
    print(r)