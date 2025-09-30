import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database='lfschool'
)
plat=con.cursor()
sql='select * from std_fee order by amount desc';
plat.execute(sql)
r=plat.fetchall()
for x in r:
    print(r)
