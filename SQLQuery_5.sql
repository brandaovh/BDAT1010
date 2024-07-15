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

-- Insert data into Movie_Actor table
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


SELECT TOP (1000)
       [Actor_ID]
     , [Actor_First_Name]
     , [Actor_Last_Name]
     , [Actor_Age_in_Years]
     , [Actor_Location]
     , [Movie_ID]
     , [CreatedOn]
FROM [mov].[Movie_Actor];