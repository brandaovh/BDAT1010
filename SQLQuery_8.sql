-- 8a.Display all the Movies and their Actors information based on the relationship
SELECT m.Movie_Name
     , m.Movie_Released_Year
     , m.Movie_Lead_Studio
     , m.Movie_Language
     , m.Movie_Category
     , m.Movie_Duration_in_Min
     , m.Movie_Worldwide_Earning_in_$M
     , m.Movie_Type
     , a.Actor_First_Name
     , a.Actor_Last_Name
     , a.Actor_Age_in_Years
     , a.Actor_Location
FROM mov.Movies          m
    JOIN mov.Movie_Actor a
        ON m.Movie_ID = a.Movie_ID;

-- 8b. Display the Movies name and their Ratings.
SELECT m.Movie_Name
     , r.Rating_Audience_Score
     , r.Rating_Rotten_Tomatoes
FROM mov.Movies           m
    JOIN mov.Movie_Rating r
        ON m.Movie_ID = r.Movie_ID;

--8c.Display all the Movies, Actors, and Directors information based on the relationship.
SELECT m.Movie_Name
     , m.Movie_Released_Year
     , m.Movie_Lead_Studio
     , m.Movie_Language
     , m.Movie_Category
     , m.Movie_Duration_in_Min
     , m.Movie_Worldwide_Earning_in_$M
     , m.Movie_Type
     , a.Actor_First_Name
     , a.Actor_Last_Name
     , a.Actor_Age_in_Years
     , a.Actor_Location
     , d.Director_First_Name
     , d.Director_Last_Name
     , d.Director_Age_in_Years
     , d.Director_Gender
FROM mov.Movies             m
    JOIN mov.Movie_Actor    a
        ON m.Movie_ID = a.Movie_ID
    JOIN mov.Movie_Director d
        ON m.Director_ID = d.Director_ID;

--8d. Display all the Movies, Actors, Directors, and Movie Rating information based on the relationship.
SELECT m.Movie_Name
     , m.Movie_Released_Year
     , m.Movie_Lead_Studio
     , m.Movie_Language
     , m.Movie_Category
     , m.Movie_Duration_in_Min
     , m.Movie_Worldwide_Earning_in_$M
     , m.Movie_Type
     , a.Actor_First_Name
     , a.Actor_Last_Name
     , a.Actor_Age_in_Years
     , a.Actor_Location
     , d.Director_First_Name
     , d.Director_Last_Name
     , d.Director_Age_in_Years
     , d.Director_Gender
     , r.Rating_Audience_Score
     , r.Rating_Rotten_Tomatoes
FROM mov.Movies             m
    JOIN mov.Movie_Actor    a
        ON m.Movie_ID = a.Movie_ID
    JOIN mov.Movie_Director d
        ON m.Director_ID = d.Director_ID
    JOIN mov.Movie_Rating   r
        ON m.Movie_ID = r.Movie_ID;

--8e. Display all the Movies, Actors, Directors, and Movie Rating information whose Rating_Audience_Score is more than 80% based on the relationship.
SELECT m.Movie_Name
     , m.Movie_Released_Year
     , m.Movie_Lead_Studio
     , m.Movie_Language
     , m.Movie_Category
     , m.Movie_Duration_in_Min
     , m.Movie_Worldwide_Earning_in_$M
     , m.Movie_Type
     , a.Actor_First_Name
     , a.Actor_Last_Name
     , a.Actor_Age_in_Years
     , a.Actor_Location
     , d.Director_First_Name
     , d.Director_Last_Name
     , d.Director_Age_in_Years
     , d.Director_Gender
     , r.Rating_Audience_Score
     , r.Rating_Rotten_Tomatoes
FROM mov.Movies             m
    JOIN mov.Movie_Actor    a
        ON m.Movie_ID = a.Movie_ID
    JOIN mov.Movie_Director d
        ON m.Director_ID = d.Director_ID
    JOIN mov.Movie_Rating   r
        ON m.Movie_ID = r.Movie_ID
WHERE CAST(REPLACE(r.Rating_Audience_Score, '%', '') AS INT) > 80;

-- 8f.	Display all the Movies information whose Rating_Rotten_Tomatoes is more than 90%.
SELECT m.*
     , r.Rating_Rotten_Tomatoes
FROM mov.Movies           m
    JOIN mov.Movie_Rating r
        ON m.Movie_ID = r.Movie_ID
WHERE CAST(REPLACE(r.Rating_Rotten_Tomatoes, '%', '') AS INT) > 90;
