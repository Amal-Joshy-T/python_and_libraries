import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database='my_data'
)

plat = con.cursor()
sql="update customers set address='nadathara' where address='thrissur'"
plat.execute(sql)
con.commit()