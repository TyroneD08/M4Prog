ALTER TABLE huisdieren DROP COLUMN eigenaar;
ALTER TABLE huisdieren ADD eigenaarid INT NOT NULL;

UPDATE huisdieren SET eigenaarid = 3 WHERE id = 1;
