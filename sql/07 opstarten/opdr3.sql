CREATE TABLE IF NOT EXISTS panda (
    id INT AUTO_INCREMENT PRIMARY KEY,
    naam VARCHAR(250)
);

CREATE TABLE IF NOT EXISTS pandas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mamaId INT,
    papaId INT,
    naam VARCHAR(250),
    FOREIGN KEY (mamaId) REFERENCES panda(id),
    FOREIGN KEY (papaId) REFERENCES panda(id)
);

INSERT INTO panda (id, naam) VALUES
(1, 'spot'),
(2, 'xiaoshi');

INSERT INTO pandas (mamaId, papaId, naam) VALUES
(1, 2, 'pandapanda');

SELECT
    n.naam   AS pandaNaam,
    m.naam   AS mamaNaam,
    p.naam   AS papaNaam
FROM
    pandas k
    JOIN panda m ON m.mamaId = m.id
    JOIN panda p ON p.papaId = p.id;