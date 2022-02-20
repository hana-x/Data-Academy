CREATE DATABASE movies;
use movies;

CREATE TABLE Actors (
    AID INT NOT NULL AUTO_INCREMENT,
    FName VARCHAR(255) NOT NULL,
    LName VARCHAR(255) NOT NULL,
    Gender CHAR(1) NOT NULL,
    PRIMARY KEY(AID)
);

INSERT INTO Actors
    (AID, FName, LName, Gender)
VALUES
    (101, 'James', 'Stewart', 'M'),
    (102, 'Deborah', 'Kerr', 'F'),
    (103, 'Peter', 'OToole', 'M'),
    (104, 'Robert', 'De Niro', 'M'),
    (105, 'F. Murray', 'Abraham', 'M'),
    (106, 'Harrison', 'Ford', 'M'),
    (107, 'Nicole', 'Kidman', 'F'),
    (108, 'Stephen', 'Baldwin', 'M'),
    (109, 'Jack', 'Nicholson', 'M'),
    (110, 'Mark', 'Wahlberg', 'M'),
    (111, 'Woody', 'Allen', 'M'),
    (112, 'Claire', 'Danes', 'F'),
    (113, 'Tim', 'Robbins', 'M'),
    (114, 'Kevin', 'Spacey', 'M'),
    (115, 'Kate', 'Winslet', 'F'),
    (116, 'Robin', 'Williams', 'M'),
    (117, 'Jon', 'Voight', 'M'),
    (118, 'Ewan', 'McGregor', 'M'),
    (119, 'Christian', 'Bale', 'M'),
    (120, 'Maggie', 'Gyllenhaal', 'F'),
    (121, 'Dev', 'Patel', 'M'),
    (122, 'Sigourney', 'Weaver', 'F'),
    (123, 'David', 'Aston', 'M'),
    (124, 'Ali', 'Astin', 'F')
;

CREATE TABLE Movie_Cast(
    AID INT NOT NULL,
    Role VARCHAR(120) NOT NULL
);

INSERT INTO Movie_Cast
    (AID, Role)
VALUES
    (101, 'John Scottie Ferguson'),
    (102, 'Miss Giddens'),
    (103, 'T.E. Lawrence'),
    (104, 'Michael'),
    (105, 'Antonio Salieri'),
    (106, 'Rick Deckard'),
    (107, 'Alice Harford'),
    (108, 'McManus'),
    (110, 'Eddie Adams'),
    (111, 'Alvy Singer'),
    (112, 'San'),
    (113, 'Andy Dufresne'),
    (114, 'Lester Burnham'),
    (115, 'Rose DeWitt Bukater'),
    (116, 'Sean Maguire'),
    (117, 'Ed'),
    (118, 'Renton'),
    (120, 'Elizabeth Darko'),
    (121, 'Older Jamal'),
    (122, 'Ripley'),
    (114, 'Bobby Darin'),
    (109, 'J.J. Gittes'),
    (119, 'Alfred Borden')
;


-- view database and tables
show databases;
explain Actors;
SELECT * FROM Actors;
explain Movie_Cast;
SELECT * FROM Movie_Cast;
