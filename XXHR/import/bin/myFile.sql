CREATE TABLE sqlTableContents (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

INSERT INTO sqlTableContents VALUES( 123, 'lastName', 'FirstName', 'Address', 'City');

SELECT * FROM sqlTableContents;
