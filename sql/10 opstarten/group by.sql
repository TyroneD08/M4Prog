
SELECT COUNT(*) FROM huisdieren;


SELECT COUNT(*) FROM beller;


SELECT COUNT(*) FROM helpdeskmedewerker;

SELECT 
    eigenaarid, 
    COUNT(*) AS aantalHuisdieren
FROM huisdieren
GROUP BY eigenaarid;
