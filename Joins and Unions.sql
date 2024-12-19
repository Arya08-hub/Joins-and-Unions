CREATE TABLE Country (
    CountryID INT PRIMARY KEY,
    CountryName VARCHAR(100)
);
INSERT INTO Country (CountryID, CountryName)
VALUES
    (1, 'USA'),
    (2, 'Canada'),
    (3, 'India');
CREATE TABLE Persons (
    PersonID INT PRIMARY KEY,
    Name VARCHAR(100),
    CountryID INT,
    Rating DECIMAL(3, 1)
);

INSERT INTO Persons (PersonID, Name, CountryID, Rating)
VALUES
    (1, 'John', 1, 4.6),
    (2, 'Jane', 2, 3.2),
    (3, 'Raj', 3, 4.8),
    (4, 'Emily', NULL, 4.3);


SELECT Persons.Name, Country.CountryName, Persons.Rating
FROM Persons
INNER JOIN Country ON Persons.CountryID = Country.CountryID;


SELECT Persons.Name, Country.CountryName, Persons.Rating
FROM Persons
LEFT JOIN Country ON Persons.CountryID = Country.CountryID;

SELECT Persons.Name, Country.CountryName, Persons.Rating
FROM Persons
RIGHT JOIN Country ON Persons.CountryID = Country.CountryID;
SELECT DISTINCT CountryName FROM Country
UNION
SELECT DISTINCT CountryName FROM Persons;

SELECT CountryName FROM Country
UNION ALL
SELECT CountryName FROM Persons;
SELECT PersonID, Name, CountryID, ROUND(Rating) AS RoundedRating
FROM Persons;