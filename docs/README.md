# US Demographics 2023

Simple Power BI visualizations of 2023 US Census data organized by [Ahmed Mohamed on Kaggle](https://www.kaggle.com/datasets/ahmedmohamed2003/county-level-demographic-population-race-gender/data).

## Setup

As a practice, deployed local instance of PostgreSQL database on Postgres Official Docker container. Created a table, inserted the dataset, and connected pgAdmin4 for simple SQL EDA. Then, connected Power BI Desktop and built the dashboard. 

## Dataset Features

The description of dataset features copied from the Kaggle dataset page mentioned above.

The dataset includes the following columns:

    County: Name of the county.
    State: Name of the state the county belongs to.
    State FIPS Code: Federal Information Processing Standard (FIPS) code for the state.
    County FIPS Code: FIPS code for the county.
    FIPS: Combined State and County FIPS codes, a unique identifier for each county.
    Total Population: Total population in the county.
    Male Population: Number of males in the county.
    Female Population: Number of females in the county.
    Total Race Responses: Total race-related responses recorded in the survey.
    White Alone: Number of individuals identifying as White alone.
    Black or African American Alone: Number of individuals identifying as Black or African American alone.
    Hispanic or Latino: Number of individuals identifying as Hispanic or Latino.


# PostgreSQL EDA

[Simple Exploratory Data Analysis done in SQL](https://github.com/js3331/us-demographics-2023/blob/main/eda_us_demographics_2023.sql) as a basic sanity check step.

Observed that there are 50 states, District of Columbia, and Puerto Rico in the dataset, validated the number of US counties (and county equivalent) with external sources, and observed that there are duplicates of county names, which is reasonable.

# Power BI Dashboard

![](states_page_screenshot.png)

![](race_page_screenshot.png)

![](gender_page_screenshot.png)


