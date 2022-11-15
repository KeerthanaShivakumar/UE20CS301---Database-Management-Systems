import streamlit as st
from database import *
from create import create_fn  # call create function from create file
from read import read
from update import update
from delete import delete


def main():
    st.title("DBMS Lab 10 - PES1UG20CS204")
    menu = ['Create', 'Read', 'Update', 'Delete']
    choice = st.sidebar.selectbox("Menu", menu, key="menu")

    # call function create table to make the table here
    create_table()

    # Create a page of that format inside each if statement

    if(choice == 'Create'):
        st.subheader("Add train")
        create_fn()  # call create page
    elif(choice == 'Read'):
        st.subheader("View/Read train")
        read()  # call read page
    elif(choice == 'Update'):
        st.subheader("Update train")
        update()  # call update fn in update page
    else:
        st.subheader("Delete train")
        delete()  # call delete fn in delete page


main()
