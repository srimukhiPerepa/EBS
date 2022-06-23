CREATE TABLE newTableContents (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);
--xyz new change --
INSERT INTO newTableContents VALUES( 123, 'lastName', 'FirstName', 'Address', 'City');

SELECT * FROM newTableContents;

DROP TABLE newTableContents;
