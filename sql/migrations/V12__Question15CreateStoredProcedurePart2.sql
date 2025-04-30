CREATE PROCEDURE GetMovieByGenre
@Genre NVARCHAR(100)
AS
BEGIN
SELECT	Title,
	Name 
FROM Movie
JOIN Director
ON Movie.DirectorID = Director.DirectorID
WHERE Genre = @Genre;
END;