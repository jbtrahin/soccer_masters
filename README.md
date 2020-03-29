# Soccer Masters
Building an app to predict the fantasy score of English Premier League forwards.


## Project Overview

You can find our final web app [here](https://soccer-masters.herokuapp.com/)


**Goal:** 

We want to build a web app that will predict the fantasy score of English Premier League forwards based on historical data.

More about it on these [google slides](https://docs.google.com/presentation/d/1YtSbjRKvxFkOw0FImH7IjGVvhv1ygMPneUkmmDmC6IA/edit?usp=sharing).

**Outcome:** 

- Using the last three seasons, we calculated the average fantasy score per game for each EPL forwards currently playing in the league.
- Using our machine learning model, we predicted the average fantasy score for the 9 remaining games in the league this season.

**High-Level Roadmap:**

1. Build web and API scrapers to extract historical data from 2 data sources (MPG anf FBREF).
2. Tranform the dataset to only keep forwards and data relevant to our machine learning models' training and testing.
3. Explore data correlation using linear regression models.
4. Train and test a neural network (using linear regression) to output a predicitve fantasy score.
5. Load all datasets into a PostgreS database hosted on AWS through Heroku host, and proceed data management tasks.
6. Build and deploy a Flask app to Heroku to display our data and analysis on the web.
8. Build a tableau dasbhoard to compare performance of models, and embed Tableau public link into web app.
9. Build front end using Boostrap to display results in a user-friendly way.


## Resources:

- Software/Toolkit: Visual Studio Code 1.39.0, Jupyter Notebook 6.0.3, Heroku 7.0.0, Flask 1.1.1, SQLAlchemy 1.3.9, Postgres
- Languages: Python 3.7
- ETL & Scrapping Libraries: pandas 1.0.1, splinter 0.13.0, beautifulsoup4 4.8.2
- Machine Learning Libraries: scikit-learn 0.22.1, TensorFlow 2.0 r2.1,
- Data Sources:
1. MPG soccer public API (ex: https://api.monpetitgazon.com/championship/match/1059901)
2. FBREF Website (https://fbref.com/)

## Github Branches and Description:

The soccer_masters repository contains:
- [A master branch](https://github.com/jbtrahin/soccer_masters)
- 6 active branches to scrap and tranform different datasets:

1. Authored by Hunter: [web_scraping](https://github.com/jbtrahin/soccer_masters/tree/web_scraping)
    - web scraping FBREF for EPL data
    - data transformation in Jupyter Notebooks
  
2.  Authored by Hunter: [neural_net](https://github.com/jbtrahin/soccer_masters/tree/neural_net)
    - Neural Network outline
    
3.  Authored by Hunter: [predictions](https://github.com/jbtrahin/soccer_masters/tree/predictions)
    - Neural Network predictions
    
3. Authored by Alfredo: [Champions_League](https://github.com/jbtrahin/soccer_masters/tree/Champions_League)
    - web scraping FBREF for Champions League data
    - database configuration and loading in JUpyter Notebooks
    
4. Authored by Amik: [Premier League](https://github.com/jbtrahin/soccer_masters/tree/premier_league)
    - web scraping FBREF for EPL data
    - correlation exploration using linear regression models
    
5. Authored by JB: [mpg_scraping](https://github.com/jbtrahin/soccer_masters/tree/mpg_scraping)
    - API scraping MPG.com for EPL data
    - Heroku instance set up
    - build Flask web app and deployment
    - build front end for web app
    - put together Tableau dashboard
    - github master branch management


## Machine Learning Model:

Using Scikit-learn and TensorFlow libraries, we'll be experimenting with different models:
- Linear Regression models
- Neural Networks


## Database:

We'll use one of Heroku managed data service to create a Heroku PostgreS instance that we'll connect to through a Flask app.

