#Lees all werknemers
SELECT FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT
FROM worker;

#Lees alle werknemers die werken in het afdeling HR
SELECT FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT
FROM worker
WHERE DEPARTMENT = 'HR';

# Voeg het minst 4 werknemers toe.
INSERT INTO Worker
(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES (009, 'Hilary', ' Clinton', 200000, '14-02-19 09.00.00', 'HR'),
       (010, 'Bob', 'Marley', 80000, '11-04-18 09.00.00', 'Admin'),
       (011, 'Tom', 'Hanks', 60000, '01-06-17 09.00.00', 'Account'),
       (012, 'Mag', 'Ryan', 70000, '28-08-16 09.00.00', 'HR');


# Filter alle medewerkers die later dan 2020 bij de organisatie zijn gekomen
SELECT FIRST_NAME, LAST_NAME, JOINING_DATE
FROM worker
WHERE JOINING_DATE > '2020-12-31-11-59-OO';

#Lees alle werknemers die 'admin' zijn en hun salaris groter of gelijk is aan 90000
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT, SALARY
FROM worker
WHERE DEPARTMENT = 'Admin'
  AND SALARY >= '90000';

#Zoek alle bonussen van de werknemer met ID 1
SELECT WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE
FROM bonus
WHERE WORKER_REF_ID = 1;

#Lees alle werknemers van wie het SALARIS tussen 100000 en 500000 ligt.
SELECT FIRST_NAME, LAST_NAME, SALARY
FROM worker
WHERE SALARY > 100000
  AND SALARY < 500000;

# Schrijf een SQL-query om de huidige datum en tijd weer te geven.
SELECT CURRENT_TIMESTAMP;

#Schrijf een SQL-query om de top 3 records van een tabel weer te geven.
SELECT *
FROM worker
LIMIT 3;

#Voeg 3 nieuwe records naar title tabel toe.
INSERT INTO Title
(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM)
VALUES (009, 'Manager', '2017-02-20 00:00:00'),
       (010, 'Executive', '2018-06-11 00:00:0002-20 00:00:00'),
       (011, 'Lead', '2019-02-20 00:00:00');


#Update het salaris van Nikola Tesla naar 2000000.
UPDATE worker
SET SALARY = 2000000
WHERE WORKER_ID = 3;

#Creëer een opnieuw tabel met de volgende eigenschappen
# 1-De naam van het tabel: address
# 2-vereiste info van het table:
#3- Maak 1-1 relatie tussen worker tabel en address

DROP TABLE Addresses;

CREATE TABLE Addresses
(
    AddressId    INTEGER UNIQUE AUTO_INCREMENT,
    DoorNo       VARCHAR(255),
    HouseNo      VARCHAR(255),
    Street       VARCHAR(255),
    Municipality VARCHAR(255),
    PostalCode   INTEGER(4) DEFAULT 1000,
    City         VARCHAR(255),
    Region       VARCHAR(255) DEFAULT 'Brussel',
    Country      VARCHAR(255) DEFAULT 'Belgium',

    PRIMARY KEY (AddressId)
);
