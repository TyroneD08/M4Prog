SELECT naam, leeftijd 
FROM huisdieren AS pets;

SELECT pets.naam, pets.leeftijd 
FROM huisdieren AS pets;

SELECT pets.naam, pets.leeftijd 
FROM huisdieren AS pets 
WHERE pets.leeftijd > 3;

SELECT * 
FROM huisdieren;

SELECT naam, leeftijd 
FROM huisdieren;

SELECT naam, leeftijd, SUM(leeftijd) 
FROM huisdieren;

SELECT naam, leeftijd, SUM(leeftijd) AS leeftijdTotaal 
FROM huisdieren;

SELECT naam, SUM(leeftijd) AS leeftijdTotaal 
FROM huisdieren 
GROUP BY naam;

SELECT
    h.hobbyid,
    h.hobby,
    p.id AS persoonid,
    p.naam
FROM
    hobby h
JOIN
    persoon p ON h.hobbyid = p.hobbyid;