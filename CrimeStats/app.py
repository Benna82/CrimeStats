# import libraries
from flask import Flask, render_template
import pyodbc
import pandas as pd
import plotly
import plotly.graph_objects as go
import json

app = Flask(__name__)

@app.route("/")
def index():
    # set up database connection
    conn = pyodbc.connect('DRIVER={ODBC Driver 17 for SQL Server};SERVER=975-BVANSTADEN;DATABASE=Benjamin;UID=sa;PWD=Waldo2019#@!')

    # query 1
    query1 = "EXEC SAPS_SP_Total_PerProvince_LatestYear"
    df1 = pd.read_sql_query(query1,conn)


    # Create a bar chart
    data1 = [
        go.Bar(
            x = df1['Province'],
            y = df1['Total_Incidents']
        )
    ]

    # convert the figures to JSON
    graphJSON1 = json.dumps(data1, cls=plotly.utils.PlotlyJSONEncoder)


    # query 2
    query2 = "EXEC SAPS_SP_Total_PerProvince"
    df2 = pd.read_sql_query(query2,conn)

    # close connection
    conn.close()

    # Create a bar chart
    data2 = []

    for province in df2['Province'].unique():
        data2.append(
            go.Bar(
                name = province,
                x = df2[df2['Province'] == province]['Financial_Year'],
                y = df2[df2['Province'] == province]['Total_Incidents']
            )
        )

    # convert the figures to JSON
    graphJSON2 = json.dumps(data2, cls=plotly.utils.PlotlyJSONEncoder)

    return render_template("index.html", graphJSON1=graphJSON1, graphJSON2=graphJSON2)

if __name__=="__main__":
    app.run(debug=True)