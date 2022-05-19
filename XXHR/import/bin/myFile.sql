CREATE TABLE table_new (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

INSERT INTO table_new VALUES( 123, 'lastName', 'FirstName', 'Address', 'City');

SELECT * FROM table_new;
