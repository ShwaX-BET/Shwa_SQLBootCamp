SELECT Title,Genre,Name AS Director_Name
FROM Movie
JOIN Director
ON Movie.DirectorID = Director.DirectorID;

SELECT Title,Name
FROM Movie
JOIN Director
ON Movie.DirectorID = Director.DirectorID
WHERE DateOfBirth < '1970';