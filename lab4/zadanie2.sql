ALTER TABLE zadanie 
ADD COLUMN godziny_szacowane INT DEFAULT(8) AFTER opis;

UPDATE zadanie SET godziny_szacowane = 4 WHERE id_zadania = 11;
UPDATE zadanie SET godziny_szacowane = 12 WHERE id_zadania = 12;
UPDATE zadanie SET godziny_szacowane = 16 WHERE id_zadania = 13;

ALTER TABLE zadanie 
MODIFY COLUMN godziny_szacowane INT DEFAULT(6);

INSERT INTO zadanie(nazwa_zadania, priorytet, opis, pracownik_id, projekt_id, sprint_id)
VALUES 
	("Backup bazy", "normalny", "Kopia zapasowa", 3, 3, 1);
DELETE FROM zadanie WHERE id_zadania = 15;

DESC zadanie;
SELECT * FROM zadanie;