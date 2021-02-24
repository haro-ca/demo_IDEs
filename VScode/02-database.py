import pandas as pd
from sqlalchemy import create_engine

# Crea database
diamantes = pd.read_csv("diamantes.csv")
engine = create_engine("sqlite:///save_table_diam.db", echo=True)
con = engine.connect()

sql_table = "diamantes_table"
diamantes.to_sql(sql_table, con)

# Explora la API de pandas
diamantes \
    .query("cut == 'Ideal'") \
    .assign(media = lambda x: x["carat"].mean())


