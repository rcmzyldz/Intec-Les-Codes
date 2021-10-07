# MYSQL IS CASE INSENSITIVE:
# all lowercase characters or uppercase characters does NOT matter

# we define relations between tables
# query = code blocks for SQL

#  QUERY
CREATE DATABASE IF NOT EXISTS MessageDB;

USE MessageDB;

# QUERY
CREATE TABLE Users
(
#     PRIMARY KEY FOR Users is UserId
    UserId    INT UNIQUE AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName  VARCHAR(100),
    Address   VARCHAR(255),
    Phone     CHAR(12) UNIQUE,
    Email     VARCHAR(100) UNIQUE,
    City      VARCHAR(50),

    PRIMARY KEY (UserId)
);

# QUERY
DROP TABLE Users;

# you cannot use custom-made datatype
# QUERY
CREATE TABLE Messages
(
#   PRIMARY KEY FOR Messages is MessageId
    MessageId  INT UNIQUE AUTO_INCREMENT,
#   FOREIGN KEYS FOR Messages are FromUserId and ToUserId
    FromUserId INT,
    ToUserId   INT,
    Subject    VARCHAR(255),
    Content    TEXT,

    PRIMARY KEY (MessageId),
    FOREIGN KEY (FromUserId) REFERENCES Users (UserId),
    FOREIGN KEY (ToUserId) REFERENCES Users (UserId)
);

# QUERY
DROP TABLE Messages;

# CREATE RECORDS | ROWS
# QUERY
INSERT INTO Users
(FirstName, LastName, Address, Phone, City)
VALUES ('Justin', 'Bieber', 'Somewhere in UK', '0467711709', 'London'),
       ('Nikola', 'Tesla', 'Somewhere in USA', '0467711707', 'New York'),
       ('Marie', 'Curie', 'Somewhere in France', '046785217', 'Paris'),
       ('Marie', 'Curie', 'Somewhere in France', '046987412', 'Paris');

# QUERY
# ROLLBACK IF IT FAILS -> WILL NOT CREATE ANY OF THESE RECORDS.
INSERT INTO Messages
(FromUserId, ToUserId, Subject, Content)
VALUES (1, 3, 'from user 1 to 3', 'This is the text content.'),
       (2, 4, 'from user 2 to 4', 'This is the text content between the two users 2 and 4');



#     text values NOT with " (double quotes) but
#                     with ' (single quotes)

# UPDATE RECORDS | ROWS
UPDATE Messages
SET Content    = 'Updated content',
    FromUserId = 5,
    Subject    = 'update subject'
WHERE MessageId = 1;

UPDATE Users
SET LastName = 'Timberlake'
WHERE FirstName = 'Justin';

UPDATE Users
SET FirstName = 'Donald'
WHERE City = 'New York';

UPDATE Users
SET Address = 'Langestraat 82 Zele 9240',
    City    = 'Zele'
WHERE UserId = 5;

# DELETE RECORDS | ROWS
DELETE
FROM Messages
WHERE MessageId = 2;

DELETE
FROM Messages
WHERE MessageId = 1;

DELETE
FROM Messages
WHERE MessageId = 2;


# READ RECORDS | ROWS
SELECT UserId,
       FirstName,
       LastName,
       Address,
       City
FROM Users;

SELECT MessageId,
       FromUserId,
       ToUserId,
       Subject,
       Content
FROM Messages;

SELECT UserId,
       FirstName,
       LastName,
       Address,
       City
FROM Users
WHERE (LastName LIKE 'Cur%');

