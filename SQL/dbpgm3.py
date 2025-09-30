import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root"
)

plat = con.cursor()

plat.execute("CREATE DATABASE my_data")
