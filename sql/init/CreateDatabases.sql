IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'Practice')
BEGIN
  CREATE DATABASE Practice
END
GO

IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'Exercises')
BEGIN
  CREATE DATABASE Exercises
END
GO