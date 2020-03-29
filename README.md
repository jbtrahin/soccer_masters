# Soccer Masters
Building an app to predict the best premier league fantasy soccer players week-over-week.

You can access the heroku app here: [Soccer Master](https://soccer-masters.herokuapp.com/)

## Project Overview

**Goal:** 

We built a web app that will predict the best premier league fantasy soccer players (forwards) for the upcoming game.

More about it on these [google slides](https://docs.google.com/presentation/d/1YtSbjRKvxFkOw0FImH7IjGVvhv1ygMPneUkmmDmC6IA/edit?usp=sharing).

**High-Level Roadmap:**
1. Build web and API scrappers on Jupyter Notebooks to get raw data from sources.
2. Build ETL process to build clean dataframe.
3. Define machine learning models.
4. Train and Test machine learning models.
5. Set up a PostgreS database through Heroku.
6. Push source and prediction data to database.
7. Build and Deploy a Flask app to Heroku.
8. Build tableau dasbhoard to compare performance of models and embed on web app.
9. Build front end (bootstrap template) to display results in a user-friendly way.

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
- 5 active branches to scrap and tranform different datasets:

1. Authored by Hunter: [web_scraping](https://github.com/jbtrahin/soccer_masters/tree/web_scraping)
    - Dataset from English Premier League website (html scraping).
  
2.  Authored by Hunter: [neural_net](https://github.com/jbtrahin/soccer_masters/tree/neural_net)
    - Neural network model outline, training and testing.
    - Fantasy score predicitions output.
    
3. Authored by Alfredo: [Champions_League](https://github.com/jbtrahin/soccer_masters/tree/Champions_League)
    - Dataset from Champions League website (html scraping).
    - Database table creation.
    
4. Authored by Amik: [Premier League](https://github.com/jbtrahin/soccer_masters/tree/premier_league)
    - Dataset from English Premier League website (html scraping).
    - Linear regression model exploration.
    
5. Authored by JB [mpg_scraping](https://github.com/jbtrahin/soccer_masters/tree/mpg_scraping)
    - Dataset from MPG Fantasy Site (api scraping).
    - Heroku instance set up.
    - Flask app build.
    - Web app front end.
    - Tableau dashboard.

## Machine Learning Models:

Using Scikit-learn and TensorFlow libraries, we'll be experimenting with different models:
- Linear Regression models
- Neural Networks

## Database:

We'll use one of Heroku managed data service to create a Heroku Postgres instance that we'll connect to through a Flask app.

