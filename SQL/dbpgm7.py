import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database='my_data'
)

plat = con.cursor()
sql="delete from customers where address='thrissur' "
plat.execute(sql)
con.commit()