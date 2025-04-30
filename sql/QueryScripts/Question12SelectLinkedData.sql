SELECT 
  Title,
  Genre,
  Name 
FROM Movie
JOIN Director
  ON Movie.DirectorID = Director.DirectorID;

SELECT 
  Title,
  Name
FROM Movie
JOIN Director
  ON Movie.DirectorID = Director.DirectorID
WHERE DateOfBirth < '1970';