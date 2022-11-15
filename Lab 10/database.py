# connect the database to mysql
import mysql.connector
mydb = mysql.connector.connect(
    host="localhost", user="root", password="", database="railways_204")
# check connection - turn on xampp and run this
if mydb:
    print("Successful")
else:
    print("Unsuccessful")

# create database only if database doesn't exist
# to execute any code, use cursors
c = mydb.cursor()


def create_table():
    #c.execute("create table if not exists dealer(dealer_id TEXT, dealer_name TEXT, dealer_city TEXT, dealer_pin TEXT, dealer_street TEXT )")
    c.execute("create table if not exists new_train_204(Train_no int, Train_name varchar(20), Train_Type varchar(10), source varchar(20), destination varchar(30), availability varchar(10), primary key(Train_no));")


def add_data(Train_no, Train_name, Train_Type, source, destination, availability):
    c.execute("insert into new_train_204 (Train_no, Train_name, Train_Type, source , destination, availability) values (%s,%s,%s,%s,%s,%s)",
              (Train_no, Train_name, Train_Type, source, destination, availability))
    mydb.commit()  # commit


def view_all_trains():
    c.execute("select * from new_train_204")
    data = c.fetchall()
    return data


def view_only_train_no():
    c.execute("select Train_no from new_train_204")
    data = c.fetchall()
    return data


def get_train(train_id):
    c.execute("select Train_no, Train_name, Train_Type, source , destination, availability from new_train_204 where Train_no = '{}'".format(train_id))
    data = c.fetchall()
    return data

# update table


def update_table(new_train_no, new_train_name, new_train_type, new_source, new_destination, new_availability, train_no, train_name, train_type, source, destination, availability):
    c.execute("UPDATE new_train_204 SET Train_no=%s, Train_name=%s, Train_Type=%s, source=%s, destination=%s, availability=%s WHERE Train_no=%s and Train_name=%s and Train_Type=%s and source=%s and destination=%s and availability=%s", (new_train_no, new_train_name, new_train_type, new_source, new_destination, new_availability, train_no, train_name, train_type, source, destination, availability))
    mydb.commit()
    c.execute("select Train_name from new_train_204")
    data = c.fetchall()
    return data

def delete_train(train_to_delete):
    c.execute('delete from new_train_204 where train_no = "{}"'.format(train_to_delete))
    mydb.commit()