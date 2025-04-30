CREATE PROCEDURE AddMovieToDVDStock
@Title NVARCHAR(100),
@Genre NVARCHAR(20),
@TotalWatchTime INT,
@YearOfRelease INT,
@Name NVARCHAR(100),
@DateOfBirth DATE,
@AvailableStock INT
AS
BEGIN
SET NOCOUNT ON;
DECLARE @MovieID INT
DECLARE @DirectorID INT 
INSERT INTO Movie(Title, Genre, TotalWatchTime, YearOfRelease)
VALUES
(@Title, @Genre, @TotalWatchTime, @YearOfRelease);
SET @MovieID = SCOPE_IDENTITY();
INSERT INTO Director(Name, DateOfBirth)
VALUES
(@Name, @DateOfBirth);
SET @DirectorID = SCOPE_IDENTITY();
INSERT INTO DVD(Stock,MovieID)
VALUES
(@AvailableStock, @MovieID);
END;
