-- a. Update the Rating_Audience_Score to 85 for the movies released by "The Weinstein Company" studio
UPDATE r
SET r.Rating_Audience_Score = 85
FROM mov.Movie_Rating r
    JOIN mov.Movies   m
        ON r.Movie_ID = m.Movie_ID
WHERE m.Movie_Lead_Studio = 'The Weinstein Company';
GO

-- b. Update the Rating_Rotten_Tomatoes to 75 for the movies released in the year 2010
UPDATE r
SET r.Rating_Rotten_Tomatoes = 75
FROM mov.Movie_Rating r
    JOIN mov.Movies   m
        ON r.Movie_ID = m.Movie_ID
WHERE m.Movie_Released_Year = 2010;
GO

-- c. Increase the Actor_Age_in_Years by 2 years for the actor whose name is "Michael Cera"
UPDATE mov.Movie_Actor
SET Actor_Age_in_Years = Actor_Age_in_Years + 2
WHERE Actor_First_Name = 'Michael'
      AND Actor_Last_Name = 'Cera';
GO

-- d. Increase the Director_Age_in_Years by 3 years for the director who has directed the movie "Leap Year"
UPDATE d
SET d.Director_Age_in_Years = d.Director_Age_in_Years + 3
FROM mov.Movie_Director d
    JOIN mov.Movies     m
        ON d.Director_ID = m.Director_ID
WHERE m.Movie_Name = 'Leap Year';
GO

-- e. Increase the Director_Age_in_Years and Actor_Age_in_Years by 1 year for those who have directed or acted in movies released by "Universal" studio
-- Update Director Age
UPDATE d
SET d.Director_Age_in_Years = d.Director_Age_in_Years + 1
FROM mov.Movie_Director d
    JOIN mov.Movies     m
        ON d.Director_ID = m.Director_ID
WHERE m.Movie_Lead_Studio = 'Universal';
GO

-- Update Actor Age
UPDATE a
SET a.Actor_Age_in_Years = a.Actor_Age_in_Years + 1
FROM mov.Movie_Actor a
    JOIN mov.Movies  m
        ON a.Movie_ID = m.Movie_ID
WHERE m.Movie_Lead_Studio = 'Universal';
GO


