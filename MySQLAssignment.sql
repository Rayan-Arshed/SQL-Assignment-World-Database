# Task 3 #
USE `world`;
SELECT count(Name) AS 'Total Cities' FROM city
WHERE CountryCode = 'USA';

# Task 4 # 
SELECT Population, LifeExpectancy AS 'Life Expectancy' FROM country
WHERE code = 'ARG';

# Task 5 #
SELECT Name AS 'Country', LifeExpectancy AS 'Life Expectancy' FROM country
ORDER BY LifeExpectancy DESC
LIMIT 1;

# Task 6 #
SELECT Name AS 'City Name' FROM city
WHERE Name LIKE 'F%'
LIMIT 25;

# Task 7 #
SELECT ID, Name AS 'City Name', Population FROM city
LIMIT 10;

# Task 8 #
SELECT Name AS 'City Name', Population FROM city
WHERE Population > 2000000;

# Task 9 #
SELECT Name AS 'City Name' FROM city
WHERE Name LIKE 'Be%';

# Task 10 #
SELECT Name AS 'City Name', Population FROM city
WHERE Population > 500000 AND Population < 1000000;

# Alternative Task 10 #
SELECT Name AS 'City Name', Population FROM city
WHERE Population BETWEEN 500000 AND 1000000;

# Task 11 #
SELECT Name AS 'City Name', Population FROM city
ORDER BY Population ASC
LIMIT 1;

# Task 12 #   
SELECT Name AS 'Country Name', 
Population AS 'Total Country Population',
countrylanguage.Language AS 'Spoken Language',
countrylanguage.Percentage AS 'Percentage of Population', 
ROUND((countrylanguage.percentage/100) * Population) AS 'Estimated Speaking Population' 
FROM country
JOIN countrylanguage ON country.code = countrylanguage.countrycode
WHERE country.Name = 'Switzerland'
ORDER BY Percentage DESC;
