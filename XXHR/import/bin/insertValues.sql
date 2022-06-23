CREATE TABLE country_table1 (
    Address varchar(255),
    City varchar(255)
);
/* altering values xyz 123*/
ALTER TABLE country_table1
DROP COLUMN City;

DESC country_table1;

DROP TABLE country_table1;
