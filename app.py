#adding basic dependencies
from flask import Flask, render_template, url_for, jsonify
from flask_sqlalchemy import SQLAlchemy
import sys
import json
import pandas as pd 
import datetime as dt
import numpy as np

#adding sqlalchemy related dependencies
import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func

# Set up Instances
app = Flask( __name__ )

app.config['SQLALCHEMY_DATABASE_URI'] = 'postgres://tklyplugonrpes:1d19818b40604e8d36f7dd7f66de9713540fd45412c8cec9661c5f2d694da75c@ec2-54-80-184-43.compute-1.amazonaws.com:5432/d43qmrqacsbjj0'

db = SQLAlchemy(app)


# Set up a route to display data

@app.route("/", methods=["GET", "POST"])
def get_from_db():
    # Just return an <html> <table> containing the data JB query from the DB
    fwd_avg_df_game27 = pd.read_sql('''SELECT * FROM "FWD_Avg"''', con=db.engine)   
    return render_template('homepage.html', fwd_avg_df_game27=fwd_avg_df_game27)

# Set up a route to display dashboard
  
@app.route("/dashboard")
def get_dashboard():
    # Return some HTML with references to the Tableau
    return render_template('dashboard.html')

# Run the app
print(__name__)
if __name__ == '__main__':
    app.debug = True
    app.run()