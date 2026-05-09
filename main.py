import pandas as pd
from sqlalchemy import create_engine

#load dataset
df = pd.read_csv("data/WHO-COVID-19-global-data.csv")

#create sqllite databasse
engine = create_engine("sqlite:///covid_data.db")

#store dataframe into sql table
df.to_sql("covid_data", con=engine,if_exists="replace", index=False)

print("Database created successfully")

#disply first 5 rows
print(df.head())

#dataset info
print(df.info())

#missing values
print(df.isnull().sum())

