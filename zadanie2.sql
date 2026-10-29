CREATE TABLE zadanie (
	id_zadania INT AUTO_INCREMENT PRIMARY KEY,
    nazwa_zadania VARCHAR(150) NOT NULL,
    priorytet ENUM('normalny', 'wysoki', 'niski'),
    opis longtext NULL
);

DESC zadanie;

UPDATE zadanie 
SET priorytet = default 
WHERE priorytet = 'normalny';

SET SQL_SAFE_UPDATES = 0;

INSERT INTO zadanie (nazwa_zadania, priorytet, opis) 
VALUES ("sprawdzenie kolokwium", 'wysoki', 'Kolokwium grupy 3 z logiki');

SELECT * FROM zadanie;