SELECT Title
FROM Movie
WHERE YearOfRelease > 2015;

SELECT Title
FROM Movie
WHERE TotalWatchTime < 110
AND Title LIKE '%e%';

SELECT Title, 
       TotalWatchTime
FROM Movie
WHERE Genre NOT LIKE '%Thriller%'
ORDER BY TotalWatchTime DESC;