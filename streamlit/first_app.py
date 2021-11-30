import streamlit as st 
import pandas as pd 
import numpy as np 

st.title('This is my first app')

x=4
st.write(x , 'square is:' , x**2)

"""
# Title: This is a Tiegle tag
This is another example for dataframes and title printing.
"""
# we can also use st.title instead of this.
df = pd.DataFrame({
    'Column A' : ['A','B','C','D'],
    'Column B' : [1,2,3,4] 
})

df

##50:00