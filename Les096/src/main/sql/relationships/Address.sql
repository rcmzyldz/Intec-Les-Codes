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

INSERT INTO Addresses
(DoorNo, HouseNo, Street, Municipality, City )
VALUES ('1', '5', 'Bezigstraat', 'Tervuren', 'Stad Brussel');

INSERT INTO Addresses
(DoorNo, HouseNo, Street, Municipality, City )
VALUES ('12', '21', 'Beekstraat', 'Heverlee', 'Stad Leuven');