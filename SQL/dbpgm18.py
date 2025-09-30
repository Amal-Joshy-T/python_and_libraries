import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database='lfschool'
)
plat=con.cursor()
sql='select max(amount) from std_fee'
plat.execute(sql)
r=plat.fetchall()
for x in r:
    print(r)
