--a.  Delete all records from the RatingCopy table
DELETE FROM mov.RatingCopy;

--b. Delete all the movie from MovieCopy whose released in year 2010.
DELETE FROM mov.MovieCopy
WHERE Movie_Released_Year = 2010;

--c. Delete all the movie from MovieCopy where language is Hindi.
DELETE FROM mov.MovieCopy
WHERE Movie_Language = 'Hindi';

--d. Delete all the movie from MovieCopy where Rating_Audience_Score is less than 80%.
DELETE FROM mov.MovieCopy
WHERE Movie_ID IN
      (
          SELECT m.Movie_ID
          FROM mov.MovieCopy        m
              JOIN mov.Movie_Rating r
                  ON m.Movie_ID = r.Movie_ID
          WHERE CAST(REPLACE(r.Rating_Audience_Score, '%', '') AS INT) < 80
      );

--e. Delete all the movie from MovieCopy where Rating_Rotten_Tomatoes is less than 70%.
DELETE FROM mov.MovieCopy
WHERE Movie_ID IN
      (
          SELECT m.Movie_ID
          FROM mov.MovieCopy        m
              JOIN mov.Movie_Rating r
                  ON m.Movie_ID = r.Movie_ID
          WHERE TRY_CAST(REPLACE(r.Rating_Rotten_Tomatoes, '%', '') AS INT) < 70
      );