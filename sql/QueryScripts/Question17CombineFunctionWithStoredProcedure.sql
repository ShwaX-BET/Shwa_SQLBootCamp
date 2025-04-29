CREATE PROCEDURE GetMovieGreaterThanAverageRuntime
AS
SELECT	Title
FROM Movie
WHERE TotalWatchTime > dbo.GetAverageWatchTime();