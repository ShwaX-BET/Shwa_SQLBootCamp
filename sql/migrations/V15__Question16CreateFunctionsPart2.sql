CREATE FUNCTION GetMovieByDirectorDateOfBirth(@DateOfBirth DATE)
RETURNS TABLE
AS
RETURN
(
SELECT	
 Title			
FROM	Movie
JOIN	Director
ON 	Movie.DirectorID = Director.DirectorID
WHERE 	DateOfBirth >= @DateOfBirth
);