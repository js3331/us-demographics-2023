# US Demographic 2023

Simple Power BI visualizations of 2023 US Census data organized by [Ahmed Mohamed on Kaggle](https://www.kaggle.com/datasets/ahmedmohamed2003/county-level-demographic-population-race-gender/data).

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

# Setup

PostgreSQL instance is setup on Postgres Docker container with census dataset.

Visualizations are created from PowerBI Desktop application.