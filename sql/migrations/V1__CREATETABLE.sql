CREATE TABLE Book(
    BookID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Genre VARCHAR(50) NOT NULL,
    TotalPageCount INT NOT NULL,
    Author Varchar(100) NOT NULL
);

CREATE TABLE Movie(
    MovieID INT Not Null identity(1,1) Primary Key,
    Title VARCHAR(100) Not Null,
    Genre VARCHAR(50) Not Null,
    TotalWatchTime INT Not Null,
    YearOfRelease Varchar(100) Not Null,
);