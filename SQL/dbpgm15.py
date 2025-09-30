import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database='lfschool'
)
plat=con.cursor()
sql='select*from std_fee where status=%s limit 3'
val=('paid',)
plat.execute(sql,val)
r=plat.fetchall()
for x in r:
    print(r)

