--a. Create new table MovieCopy and copy all records of Movie table.
SELECT *
INTO mov.MovieCopy
FROM mov.Movies;

-- b.Create a new table DirectorCopy and copy only the schema of director table.
SELECT *
INTO mov.DirectorCopy
FROM mov.Movie_Director
WHERE 1 = 0;

-- c.Create new table ActorCopy and copy all records of Actor table
SELECT *
INTO mov.ActorCopy
FROM mov.Movie_Actor;

-- d. Create new table RatingCopy and copy all records of Rating table.
SELECT *
INTO mov.RatingCopy
FROM mov.Movie_Rating;

--e. Create new table RatingCopies and copy only the schema from Rating table.
SELECT *
INTO mov.RatingCopies
FROM mov.Movie_Rating
WHERE 1 = 0;