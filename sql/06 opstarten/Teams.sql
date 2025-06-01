CREATE TABLE `team` (
  `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `teamnaam` VARCHAR(150) NOT NULL,
  UNIQUE INDEX `teamid_UNIQUE` (`id` ASC) VISIBLE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `teamlid` (
  `id` INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `teamid` INT(11) NOT NULL,
  `voornaam` VARCHAR(150) NOT NULL,
  `achternaam` VARCHAR(150) NOT NULL,
  UNIQUE INDEX `teamlidid_UNIQUE` (`id` ASC) VISIBLE,
  CONSTRAINT `fk_teamlid_team`
    FOREIGN KEY (`teamid`)
    REFERENCES `team` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `team` (`id`, `teamnaam`) VALUES
(1, 'flowerpower'),
(2, 'poisonshroom'),
(3, 'goombas'),
(4, 'the toad army');

INSERT INTO `teamlid` (`voornaam`, `achternaam`, `teamid`) VALUES
('mario', 'mario', 1),
('luigi', 'mario', 1),
('peach', '?', 1),
('toad', 'the one and only', 1),
('kamek', 'the witch', 2),
('waluigi', 'waa', 2),
('wario', 'waa', 2),
('bowser', 'the great', 2),
('goomba', '1', 3),
('goomba', '2', 3),
('goomba', '3', 3),
('goomba', '4', 3),
('toad', '1', 4),
('toad', '2', 4),
('toad', '3', 4),
('toad', '4', 4);


SELECT
    tl.id AS teamlidid,
    tl.voornaam,
    tl.achternaam,
    t.teamnaam
FROM
    teamlid tl
JOIN
    team t ON tl.teamid = t.id
ORDER BY
    t.teamnaam, tl.achternaam, tl.voornaam;

    ///////////////

    SELECT
    tl.id AS teamlidid,
    tl.voornaam,
    tl.achternaam,
    t.teamnaam
FROM
    teamlid tl
JOIN
    team t ON tl.teamid = t.id
WHERE
    t.teamnaam = 'poisonshroom'
ORDER BY
    tl.achternaam, tl.voornaam;


    /////////
    
    SELECT
    tl.id AS teamlidid,
    tl.voornaam,
    tl.achternaam,
    t.teamnaam
FROM
    teamlid tl
JOIN
    team t ON tl.teamid = t.id
WHERE
    t.teamnaam IN ('flowerpower', 'the toad army')
ORDER BY
    t.teamnaam, tl.achternaam, tl.voornaam;