-- top 10 countries by total cases
SELECT country, MAX(cumulative_cases) AS total_cases
FROM covid_data
GROUP BY country
GROUP BY total_cases DSEC
LIMIT 10;

--Top 10 countries by total death
SELECT country,MAX(cumulative_death) as total_death
FROM covid_data
GROUP BY country
GROUP BY total_death DSEC
LIMIT  10;

-- countries with highest daily new cases
SELECT country MAX(new_cases) as highest_daily_cases
FROM covid_data
GROUP BY country
GROUP BY total_deaths DSEC
LIMIT 10;

