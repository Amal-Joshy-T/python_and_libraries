import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database='my_data'
)

plat = con.cursor()
plat.execute('CREATE TABLE customers(name VARCHAR(500),address VARCHAR(400))')
# plat.execute('DROP table customers')