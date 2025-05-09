CREATE FUNCTION GetTotalMovieAmountFromDirectorName(@Name NVARCHAR(100))
RETURNS INT
AS
BEGIN
DECLARE @TotalMovieAmount INT
SELECT  @TotalMovieAmount = COUNT(Movie.DirectorID)			
FROM 	Movie
JOIN 	Director
ON 	Movie.DirectorID = Director.DirectorID
WHERE 	Name =  @Name
RETURN 	@TotalMovieAmount
END;