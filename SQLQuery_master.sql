-- 1. Create a database “Movies”
CREATE DATABASE Movies;
GO

-- 2. Create a “mov” schema under “Movies”
CREATE SCHEMA mov;
GO

-- 3. Create a table call “Movie_Director “under mov schema with the following specifications

CREATE TABLE mov.Movie_Director
(
    Director_ID INT IDENTITY(100, 10) PRIMARY KEY CLUSTERED
  , Director_First_Name VARCHAR(50)
  , Director_Last_Name VARCHAR(50)
  , Director_Age_in_Years INT
  , Director_Gender VARCHAR(10)
  , CreatedOn DATE NOT NULL
        DEFAULT GETDATE()
);
GO


INSERT INTO mov.Movie_Director
(
    Director_First_Name
  , Director_Last_Name
  , Director_Age_in_Years
  , Director_Gender
)
VALUES
('Kevin', 'Smith', 52, 'Male')
, ('Miguel', 'Arteta', 41, 'Male')
, ('Mark', 'Johnson', 58, 'Male')
, ('Tom', 'Vaughan', 37, 'Male')
, ('Francis', 'Lawrence', 52, 'Male')
, ('Adrienne', 'Shelly', 40, 'Female')
, ('David', 'Slade', 53, 'Male')
, ('Mark', 'Palansky', 53, 'Male')
, ('Jeff', 'Lowell', 49, 'Male')
, ('Simon', 'Curtis', 37, 'Male')
, ('Marc', 'Lawrence', 95, 'Male')
, ('Anand', 'Tucker', 59, 'Male')
, ('Judd', 'Apatow', 55, 'Male')
, ('Cary', 'Fukunaga', 45, 'Male')
, ('Mark', 'Helfrich', 49, 'Male')
, ('Nanette', 'Burstein', 52, 'Female')
, ('James', 'McAvoy', 44, 'Male')
, ('Mark', 'Waters', 58, 'Male')
, ('Seth', 'Gordon', 46, 'Male')
, ('Alex', 'Kendrick', 52, 'Male')
, ('Kevin', 'Lima', 60, 'Male')
, ('Lasse', 'Hallström', 76, 'Male')
, ('Ewan', 'McGregor', 52, 'Male')
, ('Rajkumar', 'Hirani', 60, 'Male')
, ('Ashutosh', 'Gowariker', 59, 'Male')
, ('Karan', 'Johar', 50, 'Male')
, ('S.S', 'Rajamouli', 49, 'Male')
, ('Sukumar', NULL, 53, 'Male')
, ('Aditya', 'Chopra', 51, 'Male')
, ('Umesh', 'Shukla', 52, 'Male');
GO

-- 4. Create a Movies table under mov schema with the following specifications
CREATE TABLE mov.Movies
(
    Movie_ID INT IDENTITY(1000, 1) PRIMARY KEY CLUSTERED
  , Movie_Name VARCHAR(100)
  , Movie_Released_Year INT
  , Movie_Lead_Studio VARCHAR(100)
  , Movie_Language VARCHAR(50)
  , Movie_Category VARCHAR(50)
  , Movie_Duration_in_Min INT
  , Movie_Worldwide_Earning_in_$M DECIMAL(15, 2)
  , Movie_Type VARCHAR(50)
  , Director_ID INT
  , CreatedOn DATETIME NOT NULL
        DEFAULT GETDATE()
  , CONSTRAINT FK_Movies_Director
        FOREIGN KEY (Director_ID)
        REFERENCES mov.Movie_Director (Director_ID)
);
GO


INSERT INTO mov.Movies
(
    Movie_Name
  , Movie_Released_Year
  , Movie_Lead_Studio
  , Movie_Language
  , Movie_Category
  , Movie_Duration_in_Min
  , Movie_Worldwide_Earning_in_$M
  , Movie_Type
  , Director_ID
)
VALUES
('Zack and Miri Make a Porno', 2008, 'The Weinstein Company', 'English', 'Romance', 101, 41.94, 'Hollywood', 100)
, ('Youth in Revolt', 2010, 'The Weinstein Company', 'English', 'Comedy', 90, 19.62, 'Hollywood', 110)
, ('When in Rome', 2010, 'Disney', 'English', 'Comedy', 91, 43.04, 'Hollywood', 120)
, ('What Happens in Vegas', 2008, 'Fox', 'English', 'Comedy', 99, 219.37, 'Hollywood', 130)
, ('Water For Elephants', 2011, '20th Century Fox', 'English', 'Drama', 120, 117.09, 'Hollywood', 140)
, ('Waitress', 2007, 'Independent', 'English', 'Romance', 108, 22.18, 'Hollywood', 150)
, ('Twilight', 2008, 'Summit', 'English', 'Romance', 122, 376.66, 'Hollywood', 160)
, ('Penelope', 2008, 'Summit', 'English', 'Comedy', 144, 20.74, 'Hollywood', 170)
, ('Over Her Dead Body', 2008, 'New Line', 'English', 'Comedy', 95, 20.71, 'Hollywood', 180)
, ('My Week with Marilyn', 2011, 'The Weinstein Company', 'English', 'Drama', 99, 8.26, 'Hollywood', 190)
, ('Music and Lyrics', 2007, 'Warner Bros.', 'English', 'Romance', 104, 145.9, 'Hollywood', 200)
, ('Leap Year', 2010, 'Universal', 'English', 'Comedy', 100, 32.59, 'Hollywood', 210)
, ('Knocked Up', 2007, 'Universal', 'English', 'Comedy', 129, 219.0, 'Hollywood', 220)
, ('Jane Eyre', 2011, 'Universal', 'English', 'Romance', 120, 30.15, 'Hollywood', 230)
, ('Good Luck Chuck', 2007, 'Lionsgate', 'English', 'Comedy', 101, 59.19, 'Hollywood', 240)
, ('Going the Distance', 2010, 'Warner Bros.', 'English', 'Comedy', 103, 42.05, 'Hollywood', 250)
, ('Gnomeo and Juliet', 2011, 'Disney', 'English', 'Animation', 84, 193.97, 'Hollywood', 260)
, ('Ghosts of Girlfriends Past', 2009, 'Warner Bros.', 'English', 'Comedy', 100, 102.22, 'Hollywood', 270)
, ('Four Christmases', 2008, 'Warner Bros.', 'English', 'Comedy', 88, 161.83, 'Hollywood', 280)
, ('Fireproof', 2008, 'Independent', 'English', 'Drama', 122, 33.47, 'Hollywood', 290)
, ('Enchanted', 2007, 'Disney', 'English', 'Comedy', 107, 340.49, 'Hollywood', 300)
, ('Dear John', 2010, 'Sony', 'English', 'Drama', 108, 114.97, 'Hollywood', 310)
, ('Beginners', 2011, 'Independent', 'English', 'Comedy', 105, 14.31, 'Hollywood', 320)
, ('3 Idiots', 2009, 'Vinod Chopra Films', 'Hindi', 'Comedy', 171, 4000.0, 'Bollywood', 330)
, ('Lagaan', 2001, 'Aamir Khan Productions', 'Hindi', 'Romance', 224, 659.0, 'Bollywood', 340)
, ('My Name Is Khan', 2010, 'Dharma Productions', 'Hindi', 'Drama', 165, 48.77, 'Bollywood', 350)
, ('Baahubali', 2015, 'Arka Media Works', 'Telugu', 'Thriller', 159, 6500.0, 'Bollywood', 360)
, ('Dilwale Dulhania Le Jayenge', 1995, 'Yash Chopra', 'Hindi', 'Romance', 189, 2000.0, 'Bollywood', 380)
, ('Oh My God', 2012, '', 'Hindi', 'Comedy', 165, 1200.0, 'Bollywood', 390)
, ('Pushpa', 2021, 'Mythri Movie Makers', 'Telugu', 'Drama', 179, 3730.0, 'Bollywood', 370);
GO

-- 5. Create a table call “Movie_Actor” under mov schema with the following specifications

CREATE TABLE mov.Movie_Actor
(
    Actor_ID INT IDENTITY(10, 1) NOT NULL PRIMARY KEY CLUSTERED
  , Actor_First_Name VARCHAR(50)
  , Actor_Last_Name VARCHAR(50)
  , Actor_Age_in_Years INT
  , Actor_Location VARCHAR(50)
  , Movie_ID INT
  , CreatedOn DATETIME NOT NULL
        DEFAULT GETDATE()
  ,
  FOREIGN KEY (Movie_ID) REFERENCES mov.Movies (Movie_ID)
);


INSERT INTO mov.Movie_Actor
(
    Actor_First_Name
  , Actor_Last_Name
  , Actor_Age_in_Years
  , Actor_Location
  , Movie_ID
)
VALUES
('Seth', 'Rogen', 53, 'Los Angeles', 1000)
, ('Michael', 'Cera', 49, 'New York', 1001)
, ('Josh', 'Duhamel', 37, 'North Dakota', 1002)
, ('Jason', 'Sudeikis', 60, 'Kansas', 1003)
, ('Robert', 'Pattinson', 45, 'Los Angeles', 1004)
, ('Nathan', 'Fillion', 55, 'Canada', 1005)
, ('Robert', 'Pattinson', 45, 'Los Angeles', 1006)
, ('James', 'McAvoy', 49, 'Scotland', 1007)
, ('Paul', 'Rudd', 52, 'New York', 1008)
, ('Kenneth', 'Branagh', 44, 'Northern Ireland', 1009)
, ('Hugh', 'Grant', 58, 'London', 1010)
, ('Matthew', 'Goode', 46, 'England', 1011)
, ('Judd', 'Apatow', 58, 'Los Angeles', 1012)
, ('Michael', 'Fassbender', 46, 'Germany', 1013)
, ('Dane', 'Cook', 52, 'United States', 1014)
, ('Jason', 'Sudeikis', 60, 'Kansas', 1015)
, ('Kelly', 'Asbury', 76, 'United States', 1016)
, ('Matthew', 'McConaughey', 52, 'Los Angeles', 1017)
, ('Vince', 'Vaughn', 60, 'Minnesota', 1018)
, ('Kirk', 'Cameron', 59, 'United States', 1019)
, ('James', 'Marsden', 50, 'Columbia', 1020)
, ('Channing', 'Tatum', 58, 'Alabama', 1021)
, ('Mike', 'Mills', 37, 'New York', 1022)
, ('Aamir', 'Khan', 52, 'India', 1023)
, ('Aamir', 'Khan', 52, 'India', 1024)
, ('Shah Rukh', 'Khan', 53, 'India', 1025)
, ('Prabhas', NULL, 53, 'India', 1026)
, ('Allu', 'Arjun', 49, 'India', 1027)
, ('Shah Rukh', 'Khan', 53, 'India', 1028)
, ('Akshay', 'Kumar', 50, 'India', 1029);

-- 6. Create a table call “Movie_Rating” under mov schema with the following specifications

CREATE TABLE mov.Movie_Rating
(
    Movie_Rating_ID INT NOT NULL IDENTITY(1, 1) PRIMARY KEY CLUSTERED
  , Rating_Audience_Score VARCHAR(50)
  , Rating_Rotten_Tomatoes VARCHAR(50)
  , Movie_ID INT
  , CreatedOn DATETIME NOT NULL
        DEFAULT GETDATE()
  ,
  FOREIGN KEY (Movie_ID) REFERENCES mov.Movies (Movie_ID)
);


INSERT INTO mov.Movie_Rating
(
    Rating_Audience_Score
  , Rating_Rotten_Tomatoes
  , Movie_ID
)
VALUES
(70, 64, 1000)
, (52, 68, 1001)
, (44, 15, 1002)
, (72, 28, 1003)
, (72, 60, 1004)
, (67, 89, 1005)
, (82, 49, 1006)
, (74, 52, 1007)
, (47, 15, 1008)
, (84, 83, 1009)
, (70, 63, 1010)
, (49, 21, 1011)
, (83, 91, 1012)
, (77, 85, 1013)
, (61, 3, 1014)
, (56, 53, 1015)
, (52, 56, 1016)
, (47, 27, 1017)
, (52, 26, 1018)
, (51, 40, 1019)
, (80, 93, 1020)
, (66, 29, 1021)
, (80, 84, 1022)
, (95, 100, 1023)
, (81, 95, 1024)
, (79, 83, 1025)
, (80, 90, 1026)
, (76, 82, 1027)
, (85, 100, 1028)
, (81, 74, 1029);


-- 7.a: List all the Movies information from the Movies table.
SELECT *
FROM mov.Movies;

-- 7.b: List all the Director information from the Director table.
SELECT *
FROM mov.Movie_Director;

-- 7.c: List all the Actor information from the Actor table.
SELECT *
FROM mov.Movie_Actor;

-- 7.d: List all the Rating information from the Rating table.
SELECT *
FROM mov.Movie_Rating;

-- 7.e: List all the movies released in the year “2010”.
SELECT *
FROM mov.Movies
WHERE Movie_Released_Year = 2010;

-- 7.f: List all the movies released by “The Weinstein Company” studio.
SELECT *
FROM mov.Movies
WHERE Movie_Lead_Studio = 'The Weinstein Company';

-- 7.g: List all the movies released in “English”.
SELECT *
FROM mov.Movies
WHERE Movie_Language = 'English';

-- 7.h: List all the movies whose name starts with ‘G’.
SELECT *
FROM mov.Movies
WHERE Movie_Name LIKE 'G%';

-- 7.i: Display all the movies under the “Comedy” category.
SELECT *
FROM mov.Movies
WHERE Movie_Category = 'Comedy';

-- 7.j: Display all the movies where the movie type is “Hollywood”.
SELECT *
FROM mov.Movies
WHERE Movie_Type = 'Hollywood';

-- 7.k: Display all the “Female” directors.
SELECT *
FROM mov.Movie_Director
WHERE Director_Gender = 'Female';

-- 7.l: Display all the directors whose Age is more than 45 years.
SELECT *
FROM mov.Movie_Director
WHERE Director_Age_in_Years > 45;

-- 7.m: Display all the Actors from “Los Angeles”.
SELECT *
FROM mov.Movie_Actor
WHERE Actor_Location = 'Los Angeles';

-- 7.n: Display all the Actors whose Age is less than 50 years.
SELECT *
FROM mov.Movie_Actor
WHERE Actor_Age_in_Years < 50;

-- 7.o: Display all the Actors whose name starts from “J”.
SELECT *
FROM mov.Movie_Actor
WHERE Actor_First_Name LIKE 'J%';

-- 7.p: Display all the Actors who are from “Los Angeles” or “New York”.
SELECT *
FROM mov.Movie_Actor
WHERE Actor_Location IN ( 'Los Angeles', 'New York' );

-- 7.q: List Director_FullName, Director_Age_in_Years, Director_Gender from Director.
SELECT Director_First_Name + ' ' + Director_Last_Name AS Director_FullName
     , Director_Age_in_Years
     , Director_Gender
FROM mov.Movie_Director;

-- 7.r: List Director_FullName, Director_Age_in_Years, Director_Gender from Director whose Age is less than 45 years.
SELECT Director_First_Name + ' ' + Director_Last_Name AS Director_FullName
     , Director_Age_in_Years
     , Director_Gender
FROM mov.Movie_Director
WHERE Director_Age_in_Years < 45;

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

-- 9.a: Create a new table MovieCopy and copy all records of the Movie table.
SELECT *
INTO mov.MovieCopy
FROM mov.Movies;

-- 9.b: Create a new table DirectorCopy and copy only the schema of the Director table.
SELECT *
INTO mov.DirectorCopy
FROM mov.Movie_Director
WHERE 1 = 0;

-- 9.c: Create a new table ActorCopy and copy all records of the Actor table.
SELECT *
INTO mov.ActorCopy
FROM mov.Movie_Actor;

-- 9.d: Create a new table RatingCopy and copy all records of the Rating table.
SELECT *
INTO mov.RatingCopy
FROM mov.Movie_Rating;

-- 9.e: Create a new table RatingCopies and copy only the schema from the Rating table.
SELECT *
INTO mov.RatingCopies
FROM mov.Movie_Rating
WHERE 1 = 0;

-- 10.a: Delete all records from the RatingCopy table.
DELETE FROM mov.RatingCopy;

-- 10.b: Delete all the movies from MovieCopy that were released in the year 2010.
DELETE FROM mov.MovieCopy
WHERE Movie_Released_Year = 2010;

-- 10.c: Delete all the movies from MovieCopy where the language is Hindi.
DELETE FROM mov.MovieCopy
WHERE Movie_Language = 'Hindi';

-- 10.d: Delete all the movies from MovieCopy where the Rating_Audience_Score is less than 80%.
DELETE FROM mov.MovieCopy
WHERE Movie_ID IN
      (
          SELECT m.Movie_ID
          FROM mov.MovieCopy        m
              JOIN mov.Movie_Rating r
                  ON m.Movie_ID = r.Movie_ID
          WHERE CAST(REPLACE(r.Rating_Audience_Score, '%', '') AS INT) < 80
      );

-- 10.e: Delete all the movies from MovieCopy where the Rating_Rotten_Tomatoes is less than 70%.
DELETE FROM mov.MovieCopy
WHERE Movie_ID IN
      (
          SELECT m.Movie_ID
          FROM mov.MovieCopy        m
              JOIN mov.Movie_Rating r
                  ON m.Movie_ID = r.Movie_ID
          WHERE TRY_CAST(REPLACE(r.Rating_Rotten_Tomatoes, '%', '') AS INT) < 70
      );


-- 11.a: Update the Rating_Audience_Score to 85 for the movies released by "The Weinstein Company" studio.
UPDATE r
SET r.Rating_Audience_Score = 85
FROM mov.Movie_Rating r
    JOIN mov.Movies   m
        ON r.Movie_ID = m.Movie_ID
WHERE m.Movie_Lead_Studio = 'The Weinstein Company';
GO

-- 11.b: Update the Rating_Rotten_Tomatoes to 75 for the movies released in the year 2010.
UPDATE r
SET r.Rating_Rotten_Tomatoes = 75
FROM mov.Movie_Rating r
    JOIN mov.Movies   m
        ON r.Movie_ID = m.Movie_ID
WHERE m.Movie_Released_Year = 2010;
GO

-- 11.c: Increase the Actor_Age_in_Years by 2 years for the actor whose name is "Michael Cera".
UPDATE mov.Movie_Actor
SET Actor_Age_in_Years = Actor_Age_in_Years + 2
WHERE Actor_First_Name = 'Michael'
      AND Actor_Last_Name = 'Cera';
GO

-- 11.d: Increase the Director_Age_in_Years by 3 years for the director who has directed the movie "Leap Year".
UPDATE d
SET d.Director_Age_in_Years = d.Director_Age_in_Years + 3
FROM mov.Movie_Director d
    JOIN mov.Movies     m
        ON d.Director_ID = m.Director_ID
WHERE m.Movie_Name = 'Leap Year';
GO

-- 11.e: Increase the Director_Age_in_Years and Actor_Age_in_Years by 1 year for those who have directed or acted in movies released by "Universal" studio.
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

-- 12.a: Create a view to display all the movie information.
CREATE VIEW mov.vw_MovieInfo
AS
SELECT *
FROM mov.Movies;
GO

-- 12.b: Create a view to display all the movies and their rating information.
CREATE VIEW mov.vw_MovieRatingInfo
AS
SELECT m.*
     , r.Rating_Audience_Score
     , r.Rating_Rotten_Tomatoes
FROM mov.Movies           m
    JOIN mov.Movie_Rating r
        ON m.Movie_ID = r.Movie_ID;
GO

-- 12.c: Create a view to display all the movies and their actor information.
CREATE VIEW mov.vw_MovieActorInfo
AS
SELECT m.*
     , a.Actor_First_Name
     , a.Actor_Last_Name
     , a.Actor_Age_in_Years
     , a.Actor_Location
FROM mov.Movies          m
    JOIN mov.Movie_Actor a
        ON m.Movie_ID = a.Movie_ID;
GO

-- 12.d: Create a view to display all the movies, ratings, actors along with director information.
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
FROM mov.Movies             m
    JOIN mov.Movie_Rating   r
        ON m.Movie_ID = r.Movie_ID
    JOIN mov.Movie_Actor    a
        ON m.Movie_ID = a.Movie_ID
    JOIN mov.Movie_Director d
        ON m.Director_ID = d.Director_ID;
GO

-- 12.e: Create a view to display all the information based on the result set returned by the query.
CREATE VIEW mov.vw_DirectorFullNameInfo
AS
SELECT m.Movie_Name
     , d.Director_First_Name + ' ' + d.Director_Last_Name AS Director_FullName
     , d.Director_Age_in_Years
     , d.Director_Gender
FROM mov.Movies             m
    JOIN mov.Movie_Director d
        ON m.Director_ID = d.Director_ID;
GO

-- 13.a: Retrieve the list of all Databases.
SELECT name
FROM sys.databases;

-- 13.b: Display the byte size of all tables in databases.
-- Display byte size of all tables in the current database
SELECT t.NAME                 AS TableName
     , s.Name                 AS SchemaName
     , p.rows                 AS RowCounts
     , SUM(a.total_pages) * 8 AS TotalSpaceKB
FROM sys.tables                     t
    INNER JOIN sys.indexes          i
        ON t.OBJECT_ID = i.object_id
    INNER JOIN sys.partitions       p
        ON i.object_id = p.OBJECT_ID
           AND i.index_id = p.index_id
    INNER JOIN sys.allocation_units a
        ON p.partition_id = a.container_id
    LEFT OUTER JOIN sys.schemas     s
        ON t.schema_id = s.schema_id
WHERE t.NAME NOT LIKE 'dt%'
      AND t.is_ms_shipped = 0
      AND i.OBJECT_ID > 255
GROUP BY t.Name
       , s.Name
       , p.Rows
ORDER BY TotalSpaceKB DESC;

-- 13.c: List of tables with the number of records.
SELECT t.NAME AS TableName
     , p.rows AS RowCounts
FROM sys.tables               t
    INNER JOIN sys.indexes    i
        ON t.OBJECT_ID = i.object_id
    INNER JOIN sys.partitions p
        ON i.object_id = p.OBJECT_ID
           AND i.index_id = p.index_id
WHERE i.index_id <= 1
ORDER BY p.rows DESC;

-- 13.d: List of Primary Key and Foreign Key for the Whole Database.
SELECT OBJECT_NAME(f.parent_object_id)                            AS TableName
     , COL_NAME(fc.parent_object_id, fc.parent_column_id)         AS ColumnName
     , OBJECT_NAME(f.referenced_object_id)                        AS ReferenceTableName
     , COL_NAME(fc.referenced_object_id, fc.referenced_column_id) AS ReferenceColumnName
FROM sys.foreign_keys                  AS f
    INNER JOIN sys.foreign_key_columns AS fc
        ON f.object_id = fc.constraint_object_id;

-- 13.e: Get all Nullable columns of a table.
SELECT t.NAME AS TableName
     , c.NAME AS ColumnName
FROM sys.tables            t
    INNER JOIN sys.columns c
        ON t.OBJECT_ID = c.OBJECT_ID
WHERE c.is_nullable = 1
ORDER BY t.NAME
       , c.NAME;


-- 13.f: Get All tables that do not have a primary key.
SELECT t.NAME AS TableName
FROM sys.tables t
WHERE NOT EXISTS
(
    SELECT 1
    FROM sys.indexes i
    WHERE i.is_primary_key = 1
          AND i.OBJECT_ID = t.OBJECT_ID
);


-- 13.g: Get All tables that do not have an identity column.
SELECT t.NAME AS TableName
FROM sys.tables t
WHERE NOT EXISTS
(
    SELECT 1
    FROM sys.columns c
    WHERE is_identity = 1
          AND c.OBJECT_ID = t.OBJECT_ID
);

-- 13.h: Get the First Date of the Current Month.
SELECT DATEADD(month, DATEDIFF(month, 0, GETDATE()), 0) AS FirstDayOfMonth;

-- 13.i: Get the Last date of the Current month.
SELECT DATEADD(month, DATEDIFF(month, 0, GETDATE()) + 1, -1) AS LastDayOfMonth;

-- 13.j: Get the First date of the next month.
SELECT DATEADD(month, DATEDIFF(month, 0, GETDATE()) + 1, 0) AS FirstDayOfNextMonth;

-- 13.k: Get the Last date of the next month.
SELECT DATEADD(month, DATEDIFF(month, 0, GETDATE()) + 2, -1) AS LastDayOfNextMonth;

-- 13.l: Get all the information from the tables (columns, data types, and constraints).
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS

-- 13.m: Get all columns containing any constraints.
SELECT *
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE;

-- 13.n: Get all tables that contain a view.
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.VIEW_TABLE_USAGE;

-- 13.o: Get all columns of a table that are used in views.
SELECT *
FROM INFORMATION_SCHEMA.VIEW_COLUMN_USAGE;