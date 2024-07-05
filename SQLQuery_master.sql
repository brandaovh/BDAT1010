-- DO NOT RUN THIS QUERY
-- SAVE YOUR QUERIES HERE AND COMMENT IT OUT
-- THE PROFESSOR WANTS A .SQL FILE WITH ALL QUERIES AND QUESTIONS AS COMMENTS


-- -- 1. Create a database “Movies” 

-- CREATE DATABASE Movies;

-- GO



-- -- 2. Create a “mov” schema under “Movies” using T-SQL

-- CREATE SCHEMA mov; 

-- GO



-- -- 3. Create a table call “Movie_Director “under mov schema with the following specifications



-- -- Step 1: Create the Movie_Director table with constraints

-- CREATE TABLE  mov.Movie_Director (

--     Director_ID INT IDENTITY(100, 10) PRIMARY KEY CLUSTERED,

--     Director_First_Name VARCHAR(50),

--     Director_Last_Name VARCHAR(50),

--     Director_Age_in_Years INT,

--     Director_Gender VARCHAR(10),

--     CreatedOn DATE NOT NULL DEFAULT GETDATE()

-- );

-- GO



-- -- Step 2: Insert the records

-- INSERT INTO mov.Movie_Director (Director_First_Name, Director_Last_Name, Director_Age_in_Years, Director_Gender)

-- VALUES

-- ('Kevin', 'Smith', 52, 'Male'),

-- ('Miguel', 'Arteta', 41, 'Male'),

-- ('Mark', 'Johnson', 58, 'Male'),

-- ('Tom', 'Vaughan', 37, 'Male'),

-- ('Francis', 'Lawrence', 52, 'Male'),

-- ('Adrienne', 'Shelly', 40, 'Female'),

-- ('David', 'Slade', 53, 'Male'),

-- ('Mark', 'Palansky', 53, 'Male'),

-- ('Jeff', 'Lowell', 49, 'Male'),

-- ('Simon', 'Curtis', 37, 'Male'),

-- ('Marc', 'Lawrence', 95, 'Male'),

-- ('Anand', 'Tucker', 59, 'Male'),

-- ('Judd', 'Apatow', 55, 'Male'),

-- ('Cary', 'Fukunaga', 45, 'Male'),

-- ('Mark', 'Helfrich', 49, 'Male'),

-- ('Nanette', 'Burstein', 52, 'Female'),

-- ('James', 'McAvoy', 44, 'Male'),

-- ('Mark', 'Waters', 58, 'Male'),

-- ('Seth', 'Gordon', 46, 'Male'),

-- ('Alex', 'Kendrick', 52, 'Male'),

-- ('Kevin', 'Lima', 60, 'Male'),

-- ('Lasse', 'Hallström', 76, 'Male'),

-- ('Ewan', 'McGregor', 52, 'Male'),

-- ('Rajkumar', 'Hirani', 60, 'Male'),

-- ('Ashutosh', 'Gowariker', 59, 'Male'),

-- ('Karan', 'Johar', 50, 'Male'),

-- ('S.S', 'Rajamouli', 49, 'Male'),

-- ('Sukumar', NULL, 53, 'Male'),

-- ('Aditya', 'Chopra', 51, 'Male'),

-- ('Umesh', 'Shukla', 52, 'Male');

-- GO



-- -- Step 3: Verify the data insertion

-- SELECT * FROM mov.Movie_Director;

-- GO



-- -- 4. Create a Movies table under mov schema with the following specifications



-- -- Create the Movies table with specified attributes and constraints

-- CREATE TABLE mov.Movies (

--     Movie_ID INT IDENTITY(1000, 1) PRIMARY KEY CLUSTERED,

--     Movie_Name VARCHAR(100) NOT NULL,

--     Movie_Released_Year INT,

--     Movie_Lead_Studio VARCHAR(100),

--     Movie_Language VARCHAR(50),

--     Movie_Category VARCHAR(50),

--     Movie_Duration_in_Min INT,

--     Movie_Worldwide_Earning_in_$M DECIMAL(15, 2),

--     Movie_Type VARCHAR(50),

--     Director_ID INT,

--     CreatedOn DATE NOT NULL DEFAULT GETDATE(),

--     CONSTRAINT FK_Movies_Director FOREIGN KEY (Director_ID) REFERENCES mov.Movie_Director(Director_ID)

-- );

-- GO



-- -- Insert the specified records into the Movies table

-- INSERT INTO mov.Movies (Movie_Name, Movie_Released_Year, Movie_Lead_Studio, Movie_Language, Movie_Category,

--                         Movie_Duration_in_Min, Movie_Worldwide_Earning_in_$M, Movie_Type, Director_ID)

-- VALUES 

-- ('Zack and Miri Make a Porno', 2008, 'The Weinstein Company', 'English', 'Romance', 101, 41.94, 'Hollywood', 100),

-- ('Youth in Revolt', 2010, 'The Weinstein Company', 'English', 'Comedy', 90, 19.62, 'Hollywood', 110),

-- ('When in Rome', 2010, 'Disney', 'English', 'Comedy', 91, 43.04, 'Hollywood', 120),

-- ('What Happens in Vegas', 2008, 'Fox', 'English', 'Comedy', 99, 219.37, 'Hollywood', 130),

-- ('Water For Elephants', 2011, '20th Century Fox', 'English', 'Drama', 120, 117.09, 'Hollywood', 140),

-- ('Waitress', 2007, 'Independent', 'English', 'Romance', 108, 22.18, 'Hollywood', 150),

-- ('Twilight', 2008, 'Summit', 'English', 'Romance', 122, 376.66, 'Hollywood', 160),

-- ('Penelope', 2008, 'Summit', 'English', 'Comedy', 144, 20.74, 'Hollywood', 170),

-- ('Over Her Dead Body', 2008, 'New Line', 'English', 'Comedy', 95, 20.71, 'Hollywood', 180),

-- ('My Week with Marilyn', 2011, 'The Weinstein Company', 'English', 'Drama', 99, 8.26, 'Hollywood', 190),

-- ('Music and Lyrics', 2007, 'Warner Bros.', 'English', 'Romance', 104, 145.9, 'Hollywood', 200),

-- ('Leap Year', 2010, 'Universal', 'English', 'Comedy', 100, 32.59, 'Hollywood', 210),

-- ('Knocked Up', 2007, 'Universal', 'English', 'Comedy', 129, 219.0, 'Hollywood', 220),

-- ('Jane Eyre', 2011, 'Universal', 'English', 'Romance', 120, 30.15, 'Hollywood', 230),

-- ('Good Luck Chuck', 2007, 'Lionsgate', 'English', 'Comedy', 101, 59.19, 'Hollywood', 240),

-- ('Going the Distance', 2010, 'Warner Bros.', 'English', 'Comedy', 103, 42.05, 'Hollywood', 250),

-- ('Gnomeo and Juliet', 2011, 'Disney', 'English', 'Animation', 84, 193.97, 'Hollywood', 260),

-- ('Ghosts of Girlfriends Past', 2009, 'Warner Bros.', 'English', 'Comedy', 100, 102.22, 'Hollywood', 270),

-- ('Four Christmases', 2008, 'Warner Bros.', 'English', 'Comedy', 88, 161.83, 'Hollywood', 280),

-- ('Fireproof', 2008, 'Independent', 'English', 'Drama', 122, 33.47, 'Hollywood', 290),

-- ('Enchanted', 2007, 'Disney', 'English', 'Comedy', 107, 340.49, 'Hollywood', 300),

-- ('Dear John', 2010, 'Sony', 'English', 'Drama', 108, 114.97, 'Hollywood', 310),

-- ('Beginners', 2011, 'Independent', 'English', 'Comedy', 105, 14.31, 'Hollywood', 320),

-- ('3 Idiots', 2009, 'Vinod Chopra Films', 'Hindi', 'Comedy', 171, 4000.0, 'Bollywood', 330),

-- ('Lagaan', 2001, 'Aamir Khan Productions', 'Hindi', 'Romance', 224, 659.0, 'Bollywood', 340),

-- ('My Name Is Khan', 2010, 'Dharma Productions', 'Hindi', 'Drama', 165, 48.77, 'Bollywood', 350),

-- ('Baahubali', 2015, 'Arka Media Works', 'Telugu', 'Thriller', 159, 6500.0, 'Bollywood', 360),

-- ('Dilwale Dulhania Le Jayenge', 1995, 'Yash Chopra', 'Hindi', 'Romance', 189, 2000.0, 'Bollywood', 380),

-- ('Oh My God', 2012, '', 'Hindi', 'Comedy', 165, 1200.0, 'Bollywood', 390),

-- ('Pushpa', 2021, 'Mythri Movie Makers', 'Telugu', 'Drama', 179, 3730.0, 'Bollywood', 370);

-- GO



-- -- Verify data in the Movies table

-- SELECT * FROM mov.Movies;

-- GO