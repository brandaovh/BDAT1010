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


-- Insert data into Movie_Rating table
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

-- Select the data to verify insertion
SELECT TOP (1000)
       Movie_Rating_ID
     , Rating_Audience_Score
     , Rating_Rotten_Tomatoes
     , Movie_ID
     , CreatedOn
FROM mov.Movie_Rating;