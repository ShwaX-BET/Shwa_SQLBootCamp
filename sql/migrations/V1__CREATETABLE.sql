CREATE TABLE Book(
    BookID INT Not Null identity(1,1) Primary Key,
    BookTitle VARCHAR(100) Not Null,
    BookGenre VARCHAR(50) Not Null,
    TotalPageCount INT Not Null,
    Author Varchar(100) Not Null
);

CREATE TABLE Movie(
    MovieID INT Not Null identity(1,1) Primary Key,
    MovieTitle VARCHAR(100) Not Null,
    MovieGenre VARCHAR(50) Not Null,
    TotalWatchTime INT Not Null,
    YearOfRelease Varchar(100) Not Null
);
