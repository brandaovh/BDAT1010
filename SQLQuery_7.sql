-- A: List all the Movies information from the Movies table.
SELECT *
FROM mov.Movies;

-- B: List all the Director information from the Director table.
SELECT *
FROM mov.Movie_Director;

-- C: List all the Actor information from the Actor table.
SELECT *
FROM mov.Movie_Actor;

-- D: List all the Rating information from the Rating table.
SELECT *
FROM mov.Movie_Rating;

-- E: List all the movie released in year “2010”.
SELECT *
FROM mov.Movies
WHERE Movie_Released_Year = 2010;

-- F: List all the movie released by “The Weinstein Company” studio.
SELECT *
FROM mov.Movies
WHERE Movie_Lead_Studio = 'The Weinstein Company';

-- G: List all the movie released in “English”.
SELECT *
FROM mov.Movies
WHERE Movie_Language = 'English';

-- H: List all the movie whose name starts with ‘G’.
SELECT *
FROM mov.Movies
WHERE Movie_Name LIKE 'G%';

-- I: Display all the movie under “Comedy” category.
SELECT *
FROM mov.Movies
WHERE Movie_Category = 'Comedy';

-- J: Display all the movie where movie type is “Hollywood”.
SELECT *
FROM mov.Movies
WHERE Movie_Type = 'Hollywood';

-- K: Display all the “Female” directors.
SELECT *
FROM mov.Movie_Director
WHERE Director_Gender = 'Female';

-- L: Display all the director whose Age is more than 45 years.
SELECT *
FROM mov.Movie_Director
WHERE Director_Age_in_Years > 45;

-- M: Display all the Actors from “Los Angeles”.
SELECT *
FROM mov.Movie_Actor
WHERE Actor_Location = 'Los Angeles';

-- N: Display all the Actor whose Age is less than 50 years.
SELECT *
FROM mov.Movie_Actor
WHERE Actor_Age_in_Years < 50;

-- O: Display all the Actor whose name is starts from “J”.
SELECT *
FROM mov.Movie_Actor
WHERE Actor_First_Name LIKE 'J%';

-- P: Display all the Actor who is from “Los Angeles” or “New York”.
SELECT *
FROM mov.Movie_Actor
WHERE Actor_Location IN ('Los Angeles', 'New York');

-- Q: List Director_FullName, Director_Age_in_Years, Director_Gender from Director
SELECT Director_First_Name + ' ' + Director_Last_Name AS Director_FullName,
       Director_Age_in_Years,
       Director_Gender
FROM mov.Movie_Director;

-- R: List Director_FullName, Director_Age_in_Years, Director_Gender from Director whose Age is less than 45 years.
SELECT Director_First_Name + ' ' + Director_Last_Name AS Director_FullName,
       Director_Age_in_Years,
       Director_Gender
FROM mov.Movie_Director
WHERE Director_Age_in_Years < 45;