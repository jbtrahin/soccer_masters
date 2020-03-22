#adding basic dependencies
from flask import Flask, render_template, url_for, jsonify
from flask_sqlalchemy import SQLAlchemy
import sys
import json
from flask_heroku import Heroku
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

# heroku = Heroku(app)

db = SQLAlchemy(app)


# Set up a route to display data

@app.route("/", method=['GET'])
def get_from_db():
    # Just return an <html> <table> containing the data JB query from the DB
  
    fwd_avg_df = pd.read_sql('''SELECT * FROM "FWD_Avg"''', con=db.engine)
    # Just return some JSON containing the ....
    #return jsonify(fwd_avg_df.to_json())#{'data': ['some data'] })#'' # show html
    return render_template('homepage.html', fwd_avg_df=fwd_avg_df)

@app.route("/", method=['POST'])
def get_from_db():
    # Just return an <html> <table> containing the data JB query from the DB
  
    fwd_avg_df = pd.read_sql('''SELECT * FROM "FWD_Avg"''', con=db.engine)#TODO: Filter the dataframe, based on the <select> values , the user sent
    # Just return some JSON containing the ....
    #return jsonify(fwd_avg_df.to_json())#{'data': ['some data'] })#'' # show html
    return render_template('homepage.html', fwd_avg_df=fwd_avg_df)
# Set up a route to display dashboard
  
@app.route("/dashboard")
def get_from_homepage():
    # Return some HTML with references to the Tableau
    return ''

# Run the app
print(__name__)
if __name__ == '__main__':
    print('this code is running')
    app.debug = True
    app.run()