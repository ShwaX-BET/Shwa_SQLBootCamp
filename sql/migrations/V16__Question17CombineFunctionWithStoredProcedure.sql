CREATE PROCEDURE GetMovieGreaterThanAverageRuntime
AS
BEGIN
SELECT
 Title
FROM Movie
WHERE TotalWatchTime > dbo.GetAverageWatchTime();
END;