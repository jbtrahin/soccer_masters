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

app.config['DATABASE_URL'] = '@ref:postgresql-silhouetted-31152'

heroku = Heroku(app)

db = SQLAlchemy(app)


# Set up Database

class Dataentry(db.Model):
    __tablename__ = "dataentry"
    id = db.Column(db.Integer, primary_key=True)
    mydata = db.Column(db.Text())

    def __init__ (self, mydata):
        self.mydata = mydata

# Set up a route to receive data

@app.route("/scrape")

def post_to_db():
    indata = Dataentry(request.form['mydata'])
    data = copy(indata. __dict__ )
    del data["_sa_instance_state"]
    try:
        db.session.add(indata)
        db.session.commit()
    except Exception as e:
        print("\n FAILED entry: {}\n".format(json.dumps(data)))
        print(e)
        sys.stdout.flush()
    return 'Success! To enter more data, <a href="{}">click here!</a>'.format(url_for("enter_data"))

# Set up a route to enter data

@app.route("/")

def enter_data(): 
    return render_template("homepage.html")


# Run the app

if __name__ == ' __main__':
    app.debug = True
    app.run()