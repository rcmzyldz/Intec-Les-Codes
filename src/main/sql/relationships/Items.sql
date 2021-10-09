DROP TABLE Items;

CREATE TABLE Items (
    ItemId INTEGER UNIQUE AUTO_INCREMENT,
    Title VARCHAR(255) NOT NULL,
    Description Text,
    Price DECIMAL(10,2) NOT NULL,

    PRIMARY KEY (ItemId)
);

#Add here 20 items which are movies