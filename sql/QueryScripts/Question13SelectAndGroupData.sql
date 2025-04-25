SELECT SUM(TotalWatchTime) AS Total_Watch_Time_Of_All_Movies
FROM Movie;

SELECT	Genre,
		SUM(TotalWatchTime) AS Total_Watch_Time
FROM Movie
GROUP BY Genre;

SELECT Genre
FROM Movie
GROUP BY Genre
HAVING COUNT(MovieID) > 1;