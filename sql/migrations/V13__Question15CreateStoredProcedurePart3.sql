CREATE PROCEDURE AddMovieAndDirector
@Title NVARCHAR(100),
@Genre NVARCHAR(20),
@TotalWatchTime INT,
@YearOfRelease INT,
@Name NVARCHAR(100),
@DateOfBirth DATE
AS 
INSERT INTO Director(Name, DateOfBirth)
VALUES
(@Name, @DateOfBirth);
INSERT INTO Movie(Title, Genre, TotalWatchTime, YearOfRelease)
VALUES
(@Title, @Genre, @TotalWatchTime, @YearOfRelease);
GO