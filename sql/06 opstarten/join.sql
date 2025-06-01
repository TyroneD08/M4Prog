SELECT
    k.klantid,
    k.naam,
    k.leeftijd,
    k.telefoonnummer,
    g.gesprekStart,
    g.gesprekEind,
    g.gesprekNaarTelefoonnummer
FROM
    klanten k
JOIN
    gesprekken g ON k.klantid = g.klantid
ORDER BY
    k.klantid ASC, g.gesprekStart ASC;
    