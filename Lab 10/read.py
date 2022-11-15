import streamlit as st
import pandas as pd
from database import *


def read():
    results = view_all_trains()
    # st.write(results)
    with st.expander("See all trains"):
        st.dataframe(pd.DataFrame(results, columns=[
                     "Train No", "Train Name", "Train Type", "Source", "Destination", "Availability"]))
