CREATE PROCEDURE GetTop5ShortestMovies
AS
SELECT TOP 5    Title,
		Genre,
		TotalWatchTime,
		YearOfRelease
FROM Movie
ORDER BY TotalWatchTime ASC;

CREATE PROCEDURE Get_Movie_By_Genre
@Genre NVARCHAR(100)
AS
SELECT	Title,
		Name AS Director_Name
FROM Movie
JOIN Director
ON Movie.DirectorID = Director.DirectorID
WHERE Genre = @Genre;

CREATE PROCEDURE add_movie_and_director
@Title NVARCHAR(100),
@Genre NVARCHAR(20),
@TotalWatchTime INT,
@YearOfRelease INT,
@Name NVARCHAR(100),
@DateOfBirth DATE
AS 
INSERT INTO Movie(Title, Genre, TotalWatchTime, YearOfRelease)
VALUES
(@Title, @Genre, @TotalWatchTime, @YearOfRelease);
INSERT INTO Director(Name, DateOfBirth)
VALUES
(@Name, @DateOfBirth);
