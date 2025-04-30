SELECT   
  Title,
  Stock AS [Available Stock]
FROM Movie
JOIN DVD
ON Movie.MovieID = DVD.MovieID
WHERE Stock < 2;