import streamlit as st 
import pandas as pd 
import numpy as np 
import time

st.title('Lets give it a try')

x=4
st.write(x , 'squared =' , x**2)

"""
## Title: This is a Tiegle tag
This is another example for dataframes and title printing.
"""
# we can also use st.title instead of this.
df = pd.DataFrame({
    'Column A' : ['A','B','C','D'],
    'Column B' : [1,2,3,4] 
})

df

"""
## Show me some graphs
"""

df_to_plot = pd.DataFrame(
    np.random.randn(20,3), columns=['A','B','C']
)

st.line_chart(df_to_plot)

"""
## Let's plot a map
"""

df_lat_lon = pd.DataFrame(
    np.random.randn(1000,2) / [50,50] + [37.76, -122.4],
    columns=['lat', 'lon']  # It is necessary to have these specific names
)

st.map(df_lat_lon)

if st.checkbox('show dataframe'):
    df_lat_lon

"""
## Let's try some widgets
"""

x = st.slider('Select a value for x', min_value=0, max_value=10, value=5)
st.write(x, 'squared =', x**2)


"""
## ComboBox
"""

option_list = range(1,10)
option = st.selectbox('Select a number', option_list)

"""
## Progress Bar
"""

label = st.empty()
progress_bar = st.progress(0)

for i in range(0,101):
    label.text(f'Progress:{i}%')
    progress_bar.progress(i)
    time.sleep(0.001)

##Sitebars
st.sidebar.write('## Sitebar')

option_side = st.sidebar.selectbox('Get a number',option_list)
st.sidebar.write('Selection:',option_side)

st.sidebar.write('## Another slider')
another_slider = st.sidebar.slider("Select range", 0.0, 100.0, (25.0,75.0))
st.sidebar.write('Range selected:',another_slider)
