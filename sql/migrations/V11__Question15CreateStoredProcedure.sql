CREATE PROCEDURE GetTop5ShortestMovies
AS
SELECT TOP 5    Title,
		Genre,
		TotalWatchTime,
		YearOfRelease
FROM Movie
ORDER BY TotalWatchTime ASC;
GO