USE TheBelgianBreweryDB;

# select all records
SELECT Id,
       Name,
       BrewerId,
       CategoryId,
       Price,
       Stock,
       Alcohol,
       Version,
       Image
FROM Beers LIMIT 50;

# select all records which has more than %6 Alcohol
SELECT Id,
       Name,
       BrewerId,
       CategoryId,
       Price,
       Stock,
       Alcohol,
       Version,
       Image
FROM Beers
WHERE Alcohol > 6;

SELECT Id,
       Name,
       BrewerId,
       CategoryId,
       Price,
       Stock,
       Alcohol,
       Version,
       Image
FROM Beers
WHERE Alcohol >= 6
  AND Alcohol <=7
LIMIT 50;

#select all records with Alcohol 6,8,9;
SELECT Id,
       Name,
       BrewerId,
       CategoryId,
       Price,
       Stock,
       Alcohol,
       Version,
       Image
FROM Beers
WHERE Alcohol IN (6,8,9);

SELECT Name,Alcohol
FROM Beers;

SELECT Name FROM Brewers;

SELECT DISTINCT City FROM Brewers;

#select all records
SELECT Id,
       Name,
       BrewerId,
       CategoryId,
       Price,
       Stock,
       Alcohol,
       Version,
       Image
FROM Beers
WHERE Name LIKE 'Ale%';

SELECT Id,
       Name,
       BrewerId,
       CategoryId,
       Price,
       Stock,
       Alcohol,
       Version,
       Image
FROM Beers
WHERE Name LIKE '%ale%';

SELECT Id,
       Name,
       BrewerId,
       CategoryId,
       Price,
       Stock,
       Alcohol,
       Version,
       Image
FROM Beers
WHERE (Name LIKE '%ale%')
AND (Alcohol >= 7)
AND (Price > 2.75);