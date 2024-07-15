-- a. Create a view to display all the movie information
CREATE VIEW mov.vw_MovieInfo
AS
SELECT *
FROM mov.Movies;
GO

-- b. Create a view to display all the movies and their rating information
CREATE VIEW mov.vw_MovieRatingInfo
AS
SELECT m.*
    , r.Rating_Audience_Score
    , r.Rating_Rotten_Tomatoes
FROM mov.Movies m
JOIN mov.Movie_Rating r
    ON m.Movie_ID = r.Movie_ID;
GO

-- c. Create a view to display all the movies and their actor information
CREATE VIEW mov.vw_MovieActorInfo
AS
SELECT m.*
    , a.Actor_First_Name
    , a.Actor_Last_Name
    , a.Actor_Age_in_Years
    , a.Actor_Location
FROM mov.Movies m
JOIN mov.Movie_Actor a
    ON m.Movie_ID = a.Movie_ID;
GO

-- d. Create a view to display all the movies, rating, actor along with director information
CREATE VIEW mov.vw_MovieCompleteInfo
AS
SELECT m.*
    , r.Rating_Audience_Score
    , r.Rating_Rotten_Tomatoes
    , a.Actor_First_Name
    , a.Actor_Last_Name
    , a.Actor_Age_in_Years
    , a.Actor_Location
    , d.Director_First_Name
    , d.Director_Last_Name
    , d.Director_Age_in_Years
    , d.Director_Gender
FROM mov.Movies m
JOIN mov.Movie_Rating r
    ON m.Movie_ID = r.Movie_ID
JOIN mov.Movie_Actor a
    ON m.Movie_ID = a.Movie_ID
JOIN mov.Movie_Director d
    ON m.Director_ID = d.Director_ID;
GO

-- e. Create a view to display all the information based on the result set returned by the query
CREATE VIEW mov.vw_DirectorFullNameInfo
AS
SELECT m.Movie_Name
    , d.Director_First_Name + ' ' + d.Director_Last_Name AS Director_FullName
    , d.Director_Age_in_Years
    , d.Director_Gender
FROM mov.Movies m
JOIN mov.Movie_Director d
    ON m.Director_ID = d.Director_ID;
GO


