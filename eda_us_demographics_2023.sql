-- Exploratory Data Analysis
-- - Sanity Check of Column Values and Column Relationships.

select * from us_demographics_data_2023
limit 5;

select count(*) from us_demographics_data_2023;
-- 3222

select count(distinct county) from us_demographics_data_2023;
-- 1960
-- There should be more than 3000 county/county-equivalent.

select county, count(*)
from us_demographics_data_2023
group by county
order by count desc
limit 5;
-- "Washington County"	30
-- "Jefferson County"	25
-- "Franklin County"	24
-- "Lincoln County"	23
-- "Jackson County"	23
-- There are many overlapping county names. Not surprising.

select count(distinct fips)
from us_demographics_data_2023;
-- 3222
-- "fips" is combination of state and county fips code and should give us
-- distinct county id. The count matches the total number of rows, so good.

-- This is closer to 3244 number sited on wiki
-- (https://en.wikipedia.org/wiki/List_of_United_States_counties_and_county_equivalents)
-- But, missing 22 county/county-equivalent.
-- Suspect that some territories might not be in the data.

select count(distinct state_fips_code)
from us_demographics_data_2023;
-- 52

select count(distinct state)
from us_demographics_data_2023;
-- 52
-- So, certainly missing some territories.

select state, count(*)
from us_demographics_data_2023
group by state
order by count asc
limit 10;
-- "District of Columbia"	1

select state, count(*)
from us_demographics_data_2023
where state = 'Puerto Rico'
group by state;
-- "Puerto Rico"	78
-- The data includes county/county-equivalent from
-- 50 states, DC, and Puerto Rico.

--
-- Checking Population Numbers
--

select state, sum(total_population)
from us_demographics_data_2023
group by state
order by sum desc
limit 5;
-- "California"	39242785
-- "Texas"	29640343
-- "Florida"	21928881
-- "New York"	19872319
-- "Pennsylvania"	12986518

select fips, total_population, male_population + female_population as total_sum
from us_demographics_data_2023
where case
	when total_population != (male_population + female_population)
	then true
	else false
end
limit 10;
-- No Output
-- Meaning (total_population) == (male_population + female_population)
-- for all counties.

select fips, total_population, total_race_reponses, white_alone + black_or_african_american_alone + hispanic_or_latino as total_sum
from us_demographics_data_2023
where case
	when total_race_reponses != (white_alone + black_or_african_american_alone + hispanic_or_latino)
	then true
	else false
end
limit 10;
-- Getting outputs.
-- Sum of three race categories seem to be
-- lower than total_population and total_race_responses.

select count(*)
from us_demographics_data_2023
where case
	when total_race_reponses != (white_alone + black_or_african_american_alone + hispanic_or_latino)
	then true
	else false
end;
-- 3218
-- So, only 4 counties have total_race_responses
-- equal to sum of three race categories.
-- Probably because there are racial minorities, like Asian,
-- that are not categorized.

select fips, state, county, total_population, total_race_reponses, white_alone + black_or_african_american_alone + hispanic_or_latino as total_sum
from us_demographics_data_2023
where case
	when total_race_reponses = (white_alone + black_or_african_american_alone + hispanic_or_latino)
	then true
	else false
end;

select fips, state, county, total_population
from us_demographics_data_2023
order by total_population asc
limit 10;
-- 15005	"Hawaii"	"Kalawao County"	43
-- 48261	"Texas"	"Kenedy County"	52
-- 48301	"Texas"	"Loving County"	54
-- 48269	"Texas"	"King County"	189
-- 31009	"Nebraska"	"Blaine County"	385
-- There are really small counties but no
-- county with zero population.