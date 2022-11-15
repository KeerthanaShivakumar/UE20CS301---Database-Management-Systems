import streamlit as st
from database import *


def create_fn():
    col1, col2 = st.columns(2)
    with col1:
        Train_no = st.text_input("Train_no")
        Train_name = st.text_input("Train Name")
        Train_Type = st.selectbox("Train Type", ["Superfast", "Mail", "Fast"])
    with col2:
        source = st.selectbox("Source", ["Bangalore", "Chennai"])
        destination = st.selectbox("Destination", ["Bangalore", "Chennai","Mangaluru"])
        availability = st.selectbox("Availability",["yes","no"])
    if(st.button("Add data")):
        add_data(Train_no, Train_name, Train_Type,
                 source, destination, availability)
        st.success("Successfully inserted for train: {}".format(Train_no))
