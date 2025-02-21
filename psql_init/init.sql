CREATE TABLE us_demographics_data_2023 (
    county TEXT,
    state TEXT,
    state_fips_code SMALLINT,
    county_fips_code SMALLINT,
    fips INTEGER,
    total_population INTEGER,
    male_population INTEGER,
    female_population INTEGER,
    total_race_reponses INTEGER,
    white_alone INTEGER,
    black_or_african_american_alone INTEGER,
    hispanic_or_latino INTEGER
);

COPY us_demographics_data_2023 FROM '/docker-entrypoint-initdb.d/data/us_demographics_2023.csv' DELIMITER ',' CSV HEADER;
SELECT * FROM us_demographics_data_2023
LIMIT 5;

SELECT current_user;