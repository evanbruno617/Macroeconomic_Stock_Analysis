import pandas as pd
df = pd.read_csv("Clean_Data/clean_fedfunds.csv")
df.to_csv("eStock_Folder/assets/json/clean_fedfunds.json")

df = pd.read_csv("Clean_Data/Industrial.csv")
df.to_json("eStock_Folder/assets/json/Industrial.json")

df = pd.read_csv("Clean_Data/inflation.csv")
df.to_json("eStock_Folder/assets/json/inflation.json")

df = pd.read_csv("Clean_Data/Retail_Sales.csv")
df.to_json("eStock_Folder/assets/json/Retail_Sales.json")

df = pd.read_csv("Clean_Data/Unemployment.csv")
df.to_json("eStock_Folder/assets/json/Unemployment.json")