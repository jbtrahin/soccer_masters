# soccer_masters
Building an app to predict the best premier league fantasy soccer players week-over-week.

## Presentation

**Goal:** We want to build a web app that will predict tthe best premier league fantasy soccer players week-over-week.

**High-Level Roadmap:**
1. Build scrapper on Jupyter Notebooks (in progress).
2. Build ETL process to build clean dataframe (in progress).
3. Define machine learning model (in progress).
4. Train and Test machine learning model.
5. Deploy a Flask app to Heroku with a Postgres database.
6. Push data to database.
7. Connect Machine Learning script to database.
8. Collect outcome of model and store in database.
9. Build front end (bootstrap template) to display results in a user-friendly way.
10. Build a Javascript app that compares model output to actual live results to evaluate model performances.


## Resources
- Software/Toolkit: Visual Studio Code 1.39.0, Jupyter Notebook 6.0.3, Heroku 7.0.0, Flask 1.1.1, SQLAlchemy 1.3.9
- Languages: Python 3.7
- ETL & Scrapping Libraries: pandas 1.0.1, splinter 0.13.0, beautifulsoup4 4.8.2
- Machine Learning Libraries: scikit-learn 0.22.1, TensorFlow 2.0 r2.1,
- Data Sources:
1. MPG soccer public API (ex: https://api.monpetitgazon.com/championship/match/1059901)
2. FBREF Website (https://fbref.com/)

## Github Branches and description

The soccer_masters repository contains:
- [A master branch](https://github.com/jbtrahin/soccer_masters)
- 4 active branches to scrap and tranform different datasets:
1. Authored by Hunter: [web_scraping](https://github.com/jbtrahin/soccer_masters/tree/web_scraping)
2. Authored by Alfredo: [Champions_League](https://github.com/jbtrahin/soccer_masters/tree/Champions_League)
3. Authored by Amik: [Premier League](https://github.com/jbtrahin/soccer_masters/tree/premier_league)
4. Authored by JB [mpg_scraping](https://github.com/jbtrahin/soccer_masters/tree/web_scraping)

## Machine Learning Model

Using Scikit-learn and TensorFlow libraries, we'll be experimenting with different models:
- Linear Regression models
- Neural Networks

## Database

We'll use one of Heroku managed data service to create a Heroku Postgres instance that we'll connect to through a Flask app.

