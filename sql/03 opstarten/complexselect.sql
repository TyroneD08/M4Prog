
CREATE TABLE muziek_luistergeschiedenis (
  id INT AUTO_INCREMENT PRIMARY KEY,
  gebruiker_naam VARCHAR(100) NOT NULL,
  artiest VARCHAR(100) NOT NULL,
  lied VARCHAR(100) NOT NULL,
  speeltijd_minuten INT NOT NULL,
  datum DATE NOT NULL
);


INSERT INTO muziek_luistergeschiedenis (gebruiker_naam, artiest, lied, speeltijd_minuten, datum) VALUES
('Tom', 'Adele', 'Hello', 4, '2025-05-21'),
('Sara', 'Drake', 'Gods Plan', 3, '2025-05-20'),
('Lisa', 'Coldplay', 'Yellow', 5, '2025-05-19'),
('Tom', 'Eminem', 'Lose Yourself', 5, '2025-05-18'),
('Sara', 'Beyonce', 'Halo', 4, '2025-05-17');


SELECT * FROM muziek_luistergeschiedenis
ORDER BY speeltijd_minuten DESC;


SELECT * FROM muziek_luistergeschiedenis
LIMIT 2;

SELECT SUM(speeltijd_minuten) AS totaal_speeltijd
FROM muziek_luistergeschiedenis;
