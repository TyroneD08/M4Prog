CREATE TABLE IF NOT EXISTS panda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(250)
);

INSERT INTO panda (naam) VALUES
('spot'),
('xiaoshi');

SELECT * FROM panda;