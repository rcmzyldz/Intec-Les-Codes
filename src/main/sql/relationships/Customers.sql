DROP TABLE Customers;

CREATE TABLE Customers
(
    CustomerId INTEGER UNIQUE AUTO_INCREMENT,
    FirstName  VARCHAR(255) NOT NULL,
    LastName   VARCHAR(255) NOT NULL,
    AddressId  INTEGER      NOT NULL,

    PRIMARY KEY (CustomerId),
    CONSTRAINT FKAddressToCustomer FOREIGN KEY(AddressId) REFERENCES Addresses(AddressId)

);

INSERT INTO Customers (
                      FirstName,LastName,AddressId)
                      VALUES
                             ('Rahime', 'Yildiz', 2),
                             ('Justin', 'Bieber', 1);
