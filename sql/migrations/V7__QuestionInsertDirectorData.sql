INSERT INTO Director (Name, DateOfBirth)
VALUES 
('Robert Zemeckis', '1951-05-14'),  
('Peter Jackson', '1961-10-31'),    
('James Wong' , '1964-06-04'),       
('Robert Stevenson','1905-01-31');  

ALTER TABLE Movie
ADD DirectorID INT,
CONSTRAINT FK_Director FOREIGN KEY (DirectorID) REFERENCES Director(DirectorID);