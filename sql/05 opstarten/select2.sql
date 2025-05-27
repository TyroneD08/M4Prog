SELECT 
  huisdieren.naam AS huisdier_naam,
  huisdieren.soort,
  huisdiereigenaar.voornaam,
  huisdiereigenaar.achternaam
FROM 
  huisdieren
JOIN 
  huisdiereigenaar 
ON 
  huisdieren.eigenaarid = huisdiereigenaar.id
WHERE 
  huisdieren.id = 1;
