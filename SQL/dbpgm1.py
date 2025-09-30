import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root"
)

print(con)