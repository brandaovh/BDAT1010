-- Step 1: Create the Movie_Director table with constraints
CREATE TABLE  mov.Movie_Director (
    Director_ID INT IDENTITY(100, 10) PRIMARY KEY CLUSTERED,
    Director_First_Name VARCHAR(50),
    Director_Last_Name VARCHAR(50),
    Director_Age_in_Years INT,
    Director_Gender VARCHAR(10),
    CreatedOn DATE NOT NULL DEFAULT GETDATE()
);
GO


-- Step 2: Insert the records
INSERT INTO mov.Movie_Director (Director_First_Name, Director_Last_Name, Director_Age_in_Years, Director_Gender)
VALUES 
('Kevin', 'Smith', 52, 'Male'),
('Miguel', 'Arteta', 41, 'Male'),
('Mark', 'Johnson', 58, 'Male'),
('Tom', 'Vaughan', 37, 'Male'),
('Francis', 'Lawrence', 52, 'Male'),
('Adrienne', 'Shelly', 40, 'Female'),
('David', 'Slade', 53, 'Male'),
('Mark', 'Palansky', 53, 'Male'),
('Jeff', 'Lowell', 49, 'Male'),
('Simon', 'Curtis', 37, 'Male'),
('Marc', 'Lawrence', 95, 'Male'),
('Anand', 'Tucker', 59, 'Male'),
('Judd', 'Apatow', 55, 'Male'),
('Cary', 'Fukunaga', 45, 'Male'),
('Mark', 'Helfrich', 49, 'Male'),
('Nanette', 'Burstein', 52, 'Female'),
('James', 'McAvoy', 44, 'Male'),
('Mark', 'Waters', 58, 'Male'),
('Seth', 'Gordon', 46, 'Male'),
('Alex', 'Kendrick', 52, 'Male'),
('Kevin', 'Lima', 60, 'Male'),
('Lasse', 'Hallström', 76, 'Male'),
('Ewan', 'McGregor', 52, 'Male'),
('Rajkumar', 'Hirani', 60, 'Male'),
('Ashutosh', 'Gowariker', 59, 'Male'),
('Karan', 'Johar', 50, 'Male'),
('S.S', 'Rajamouli', 49, 'Male'),
('Sukumar', NULL, 53, 'Male'),
('Aditya', 'Chopra', 51, 'Male'),
('Umesh', 'Shukla', 52, 'Male');
GO

-- Step 3: Verify the data insertion
SELECT * FROM mov.Movie_Director;
GO