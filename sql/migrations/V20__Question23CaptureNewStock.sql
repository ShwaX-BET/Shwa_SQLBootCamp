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
    DECLARE @DirectorID INT;
    DECLARE @MovieID INT;
    INSERT INTO Director(Name, DateOfBirth)
    VALUES (@Name, @DateOfBirth);
    SET @DirectorID = SCOPE_IDENTITY();
    INSERT INTO Movie(Title, Genre, TotalWatchTime, YearOfRelease, DirectorID)
    VALUES (@Title, @Genre, @TotalWatchTime, @YearOfRelease, @DirectorID);
    SET @MovieID = SCOPE_IDENTITY();
    INSERT INTO DVD(Stock, MovieID)
    VALUES (@AvailableStock, @MovieID);
END;

