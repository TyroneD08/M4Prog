
CREATE TABLE helpdeskmedewerker (
    id INTEGER PRIMARY KEY,
    naam TEXT
);

CREATE TABLE beller (
    id INTEGER PRIMARY KEY,
    naam TEXT
);

CREATE TABLE gesprek (
    id INTEGER PRIMARY KEY,
    beller_id INTEGER,
    helpdeskmedewerker_id INTEGER,
    FOREIGN KEY (beller_id) REFERENCES beller(id),
    FOREIGN KEY (helpdeskmedewerker_id) REFERENCES helpdeskmedewerker(id)
);


INSERT INTO helpdeskmedewerker (id, naam) VALUES (1, 'spot'), (2, 'xiaoshi');
INSERT INTO beller (id, naam) VALUES (1, 'cheng'), (2, 'tyrone');
INSERT INTO gesprek (id, beller_id, helpdeskmedewerker_id) VALUES 
    (1, 1, 2),
    (2, 2, 1);


SELECT 
    gesprek.id AS gesprek_id,
    beller.naam AS beller_naam,
    helpdeskmedewerker.naam AS medewerker_naam
FROM gesprek
JOIN beller ON gesprek.beller_id = beller.id
JOIN helpdeskmedewerker ON gesprek.helpdeskmedewerker_id = helpdeskmedewerker.id;
