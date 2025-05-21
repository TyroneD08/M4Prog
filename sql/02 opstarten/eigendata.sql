
CREATE TABLE applicaties (
    id INT AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(50),
    categorie VARCHAR(50),
    gebruikers_aantal_miljard DECIMAL(3,1),
    eigenaar VARCHAR(50),
    jaar_opgericht YEAR
);

INSERT INTO applicaties (naam, categorie, gebruikers_aantal_miljard, eigenaar, jaar_opgericht) VALUES
('Snapchat', 'Social Media', 0.75, 'Snap Inc.', 2011),
('Instagram', 'Social Media', 2.0, 'Meta', 2010),
('Discord', 'Communicatie', 0.4, 'Discord Inc.', 2015),
('WhatsApp', 'Berichten', 2.5, 'Meta', 2009),
('X', 'Microblogging', 0.5, 'X Corp.', 2006);


SELECT naam, categorie, gebruikers_aantal_miljard FROM applicaties;

SELECT jaar_opgericht, eigenaar, naam FROM applicaties;


SELECT gebruikers_aantal_miljard, naam, categorie, eigenaar, jaar_opgericht FROM applicaties;
