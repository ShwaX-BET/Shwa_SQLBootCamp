CREATE TABLE Director 
(
    DirectorID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,  
    Name VARCHAR(100) NOT NULL,  
    DateOfBirth DATE NOT NULL ,
);