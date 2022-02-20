-- creating database
CREATE DATABASE bookstore;
use bookstore;

-- creating tables
CREATE TABLE Authors (
    AID INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(70) NOT NULL,
    Country VARCHAR(100) NOT NULL,
    PRIMARY KEY(AID)
);

INSERT INTO Authors
    (Name, Country)
VALUES
    ('J.D. Salinger', 'USA'),
    ('F. Scott. Fitzgerald', 'USA'),
    ('Jane Austen', 'UK'),
    ('Scott Hanselman', 'USA'),
    ('Pranav Rastogi', 'India'),
    ('Todd Miranda', 'USA'),
    ('Christian Wenz', 'USA'),
    ('Jeremy P. Tarcher', 'USA'),
    ('Donald L. Kreher', 'USA'),
    ('Martin Heidegger', 'Germany'),
    ('Scott W. Cunningham', 'USA'),
    ('Unknown', 'Unknown')
    ;

CREATE TABLE Books (
    BID INT NOT NULL AUTO_INCREMENT,
    AID INT NOT NULL,
    Title VARCHAR(100) NOT NULL,
    Language VARCHAR(20) NOT NULL,
    ISBN VARCHAR(30) NOT NULL,
    Price INT NOT NULL,
    PRIMARY KEY(BID),
    FOREIGN KEY(AID) REFERENCES Authors(AID) 
);

INSERT INTO Books
    (AID, Title, Language, ISBN, Price)
VALUES
    (1, 'The Catcher in the Rye', 'English', '7543321726', 12.70),
    (1, 'Nine Stories', 'English', '0316769509', 9.11),
    (1, 'Franny and Zooey', 'Italian', '9780316769495', 17.85),
    (2, 'The Great Gatsby', 'English', '979-8745274824', 11.98),
    (2, 'Tender is the Night', 'Spanish', 'B00BAX7OFK', 9.99),
    (3, 'Pride and Prejudice', 'English', '9780141439518', 8.50),
    (4, 'ASP.NET 4.0 in C# e VB', 'Italian', '8820345536', 15),
    (5, 'ASP.NET 4.0 in C# e VB', 'Italian', '8820345536', 15),
    (6, 'ASP.NET 4.0 in C# e VB', 'Italian', '8820345536', 15),
    (7, 'ASP.NET 4.0 in C# e VB', 'Italian', '8820345536', 15),
    (8, 'Attached - the new science of adult attachment', 'English', '1529032172', 8.69),
    (9, 'Combinatorial Algorithms: Generation, Enumeration, and Search', 'English', '084933988X', 104.17),
    (10, 'Heraclitus: The Inception of Occidental Thinking and Logic', 'Greek', '0826462413', 17.99),
    (11, 'Analytics and Tech Mining for Engineering Managers', 'English', '978-1606505106', 36.73)
;


-- view database and tables
show databases;
explain Authors;
SELECT * FROM Authors;
explain Books;
SELECT * FROM Books;


-- update record
UPDATE Authors
SET Country = 'Denmark'
WHERE AID = 7;

-- delete record
DELETE FROM Authors 
WHERE AID = 12;

-- join tables
SELECT Authors.Name, Books.Title
FROM Books
INNER JOIN Authors
ON Books.AID = Authors.AID;

-- run simple query
SELECT * FROM Books
WHERE Books.Language = 'Greek';

-- run complex query
SELECT * FROM Books, Authors
WHERE Books.AID = Authors.AID AND Authors.Country = 'Germany';

-- retrieve all data sorted in ascending order
SELECT * FROM Books ORDER BY Price;

-- filter using comparison operators (one table)
SELECT * FROM Books
WHERE Price between 10 and 50;