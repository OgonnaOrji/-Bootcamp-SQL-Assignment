USE WORLD;

#Task 1 Number of cities in the USA

SELECT  count(distinct name) As no_of_cities_in_USA
FROM City
WHERE CountryCode = 'USA';

#Task 2 Population and average life expectancy for people in Argentina (ARG).

SELECT name,population, Round( AVG(LifeExpectancy),2) As Average_life_Expectancy
FROM Country
WHERE name= 'Argentina'
Group by population
Order by name,population,AVG(LifeExpectancy);

#Task 3 Country with the highest life expectancy?

SELECT Name AS Country_Name,LifeExpectancy
FROM country
ORDER BY LifeExpectancy
DESC
Limit 1;

#Task 25 cities around the world that start with the letter 'F' in a single SQL query.

Select distinct(name) As City_Name, CountryCode
From city
Where name like 'F%'
Order by name
Limit 25;

#Task 5 Columns Id, Name, Population of first 10 rows.

Select ID, Name, Population
From City
limit 10;

#Task 6 Cities from city table whose population is larger than 2000000.

Select distinct(name) As City_Name, Population
From City 
WHERE population >  2000000
Order By population;

#Task 7 All city names from city table whose name begins with “Be” prefix.

Select *
From City 
Where name like 'BE%';

#Task 8 Cities from city table whose population is between 500000-1000000.
 
 Select Name AS City_Name, Population
 From City
 where Population between 500000 and 1000000
 order by population ;
 
 #Task 9 City with the lowest population in the city table.

SELECT Name As City_Name,Population
FROM City
ORDER BY Population
Limit 1;


#Task 10 The capital of Spain (ESP).

Select Country.name as Country, City.name as Capital 
from country
inner join city 
On country.capital=city.id
where country.name= 'spain';

#Task 11 List of all the languages spoken in the Caribbean region.

SELECT distinct(countrylanguage.Language) As languages_spoken_in_the_Caribbean_region
From countrylanguage
left join country
On countrylanguage.CountryCode= country.Code
Where region = 'caribbean';

#Task 12 All cities from the Europe continent.

select country.continent as Continent, city.name AS cities_from_Europe_continent
from city 
left join country
On city.Countrycode= country.Code
where Continent='Europe';



































































