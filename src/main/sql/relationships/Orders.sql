#Customers can make many orders
#Orders can contain many articles.

DROP TABLE Orders;

CREATE TABLE Orders(
    OrderId INTEGER UNIQUE AUTO_INCREMENT,
    CustomerId INTEGER NOT NULL,
    OrderDate DATE,
    OrderTime TIME,
    TotalAmount DECIMAL(8,2),

    PRIMARY KEY (OrderId),
    CONSTRAINT FKCustomerToOrderNTo1 FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)

);


#Add here at least 10 orders
#Filter all records from customer table with id = 1
SELECT OrderId,CustomerId,OrderDate,OrderTime,TotalAmount
FROM Orders
WHERE CustomerId = 1;