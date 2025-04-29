CREATE PROCEDURE GetTop5ShortestMovies
AS
SELECT TOP 5    Title,
		Genre,
		TotalWatchTime,
		YearOfRelease
FROM Movie
ORDER BY TotalWatchTime ASC;
GO

CREATE PROCEDURE GetMovieByGenre
@Genre NVARCHAR(100)
AS
SELECT	Title,
	Name 
FROM Movie
JOIN Director
ON Movie.DirectorID = Director.DirectorID
WHERE Genre = @Genre;
GO

CREATE PROCEDURE AddMovieAndDirector
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
GO