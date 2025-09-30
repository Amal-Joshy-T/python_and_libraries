import mysql.connector

con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database='my_data'
)

plat = con.cursor()
sql='insert into customers(name,address)values(%s,%s)'
values=[('amal','thrissur'),
('joseph','perichery')]
plat.executemany(sql,values)
con.commit()