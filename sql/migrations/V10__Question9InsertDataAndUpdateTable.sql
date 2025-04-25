INSERT INTO Movie (Title, Genre, TotalWatchTime, YearOfRelease)
VALUES
('Spider-Man: Into the Spider-Verse', 'SuperHero', 117, 2018),
('Whiplash', 'Drama', 107, 2014),
('WALL·E', 'Animated', 98, 2008),
('Parasite', 'Thriller', 132, 2019),
('Arrival', 'Drama', 116, 2016),
('Everything Everywhere All at Once', 'Action', 139, 2022);

INSERT INTO Director (Name, DateOfBirth)
VALUES
('Bob Persichetti', '1970-09-28'),
('Damien Chazelle', '1985-01-19'),
('Andrew Stanton', '1965-12-03'),
('Bong Joon Ho', '1969-09-14'),
('Denis Villeneuve', '1967-10-03'),
('Daniel Kwan', '1988-02-10');

UPDATE Movie
SET DirectorID =  5  
WHERE Title = 'Spider-Man: Into the Spider-Verse'; 

UPDATE Movie
SET DirectorID =  6  
WHERE Title = 'Whiplash'; 

UPDATE Movie
SET DirectorID =  7  
WHERE Title = 'WALL·E'; 
                    
UPDATE Movie
SET DirectorID =  8  
WHERE Title = 'Parasite'; 

UPDATE Movie
SET DirectorID =  9  
WHERE Title = 'Arrival'; 

UPDATE Movie
SET DirectorID =  10  
WHERE Title = 'Everything Everywhere All at Once'; 