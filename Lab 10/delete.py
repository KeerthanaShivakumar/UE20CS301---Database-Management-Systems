import streamlit as st
import pandas as pd
from database import *


def delete():
    all_trains = view_all_trains()
    df=pd.DataFrame(all_trains,columns=['Train No','Train Name','Train type','source','destination','availability'])
    with st.expander("Present data"):
        st.dataframe(df)
    list_of_trains=[i[0] for i in view_only_train_no()]
    selected_train = st.selectbox("Train to delete", list_of_trains)
    st.warning("Do you want to delete train {}?".format(selected_train))
    if st.button("Delete chosen train"):
        delete_train(selected_train)
        st.success("Train {} deleted successfully".format(selected_train))
        after_delete=view_all_trains()
        df2 = pd.DataFrame(after_delete, columns=['Train No','Train Name','Train type','source','destination','availability'])
        with st.expander("After deleting data"):
            st.dataframe(df2)