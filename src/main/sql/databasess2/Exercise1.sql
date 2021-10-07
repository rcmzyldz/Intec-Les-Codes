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
FROM Beers;

#(a) Geef een lijst van alle biercategorieen. (38)

SELECT Id, Category
FROM categories;


SELECT Id, Name,Address,ZipCode,City,Turnover
   FROM brewers;

#(c) Toon de lijst van categorieen in dalende alfabetische
#volgorde zonder de categorie-id’s. (38)
SELECT Name,Turnover
FROM brewers
WHERE Turnover > 5000;

#(d) Toon nu enkel de naam en de stad van de brouwerijen die
# minder dan 5000 Euro turnover, maar niet 0. Sorteer de lijst
# basis van de turnover. (53)
SELECT Name,Turnover,City
FROM brewers
WHERE Turnover < 5000
AND Turnover > 0;

#(e) Geef een lijst van alle mogelijke alcoholgehaltes in de
# beers tabel. Dus geen dubbels. En gesorteerd van groot naar
# klein. (14)
SELECT DISTINCT Alcohol
FROM Beers
ORDER BY Alcohol;


#(f) Toon alle namen van bieren waarvan de naam “wit” bevat
# zonder dubbels, alfabetisch gesorteerd. (30)
SELECT DISTINCT Name
FROM Beers
WHERE Name LIKE '%WIT%'
ORDER BY Name;

#(g) Toon alle bieren met meer alcohol dan 3 en minder dan 7
# zonder gebruik te maken van logische operatoren (<, >, …)
# (568)
SELECT Name,Alcohol
FROM Beers
WHERE Alcohol IN (4,5,6);





