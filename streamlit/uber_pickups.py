import streamlit as st
import pandas as pd
import numpy as np

"""
# Uber Pickups
"""

data_url = 'https://s3-us-west-2.amazonaws.com/streamlit-demo-data/uber-raw-data-sep14.csv.gz'

@st.cache(allow_output_mutation=True)
def download_data():
    return pd.read_csv(data_url)

nrow = st.sidebar.slider('Num rows to display:', 0, 1000, value=500)
hour_range = st.sidebar.slider('Hour range:', 0, 24, (8,17))

st.sidebar.write('Hours selected: ', hour_range[0],hour_range[1])

data = (download_data()
        #.loc[1:nrow]
        .rename(columns={'Date/Time':'date_time', 'Lat':'lat','Lon':'lon','Base':'base'})
        .assign(date_time = lambda df: pd.to_datetime(df.date_time))
        .loc[lambda df: (df.date_time.dt.hour >= hour_range[0]) & (df.date_time.dt.hour < hour_range[1])]
        .loc[1:nrow]
        )

data

st.map(data)

