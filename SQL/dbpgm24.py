import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database='lfschool'
)
plat=con.cursor()
sql='SELECT *FROM std_details LEFT JOIN sub_details ON std_details.sub = sub_details.sub_id'
plat.execute(sql)
r=plat.fetchall()
for x in r:
    print(r)
