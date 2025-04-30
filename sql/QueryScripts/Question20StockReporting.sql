SELECT   
  Title,
  Stock AS [Available Stock]
FROM Movie
JOIN DVD
ON Movie.MovieID = DVD.MovieID
ORDER BY Stock DESC;