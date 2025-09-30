import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root"
)

plat = con.cursor()

plat.execute("SHOW DATABASES")

for i in plat:
    print(i)