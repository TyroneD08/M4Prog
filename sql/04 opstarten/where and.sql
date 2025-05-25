
CREATE TABLE `planten` (
`id` int(11) NOT NULL,
`naam` text NOT NULL,
`bloeitInSeisoen` int(11) NOT NULL,
`heeftBloemen` tinyint(1) NOT NULL,
`maxHoogte` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

ALTER TABLE `planten`
ADD PRIMARY KEY (`id`);

ALTER TABLE `planten`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

INSERT INTO `planten` (`id`, `naam`, `bloeitInSeisoen`, `heeftBloemen`, `maxHoogte`) VALUES (NULL, 'bosje met bloemen', '1', '1', '100'),
(NULL, 'bosje zonder bloemen', '1', '0', '60'),
(NULL, 'boompje', '4', '0', '460'),
(NULL, 'zonnebloem', '2', '1', '260');


Select * from planten where heeftBloemen = 0

Select * from planten where heeftBloemen = 0 AND maxHoogte < 100