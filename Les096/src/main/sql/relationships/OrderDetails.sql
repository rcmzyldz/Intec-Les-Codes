DROP TABLE OrderDetails;

CREATE TABLE OrderDetails
(

    OrderId INTEGER,
    ItemId  INTEGER,
        CONSTRAINT PKOrderToOrderDetailsMToN FOREIGN KEY (OrderId) REFERENCES Orders(OrderId),
        CONSTRAINT PKItemToOrderDetailsMToN FOREIGN KEY (ItemId) REFERENCES Items(ItemId)

);

#Add items to order 1 -> (item1, item2, item3)
#Add items to order 2 -> (item1)
#Add items to order 3 -> (item2, item3, item4)

#filter all records where items from order 1
SELECT OrderId,ItemId
FROM OrderDetails
WHERE OrderId = 1;

#filter all records where item1 is ordered
SELECT OrderId,ItemId
FROM OrderDetails
WHERE ItemId = 1;