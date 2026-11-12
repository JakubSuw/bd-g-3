CREATE TABLE zadanie (
	id_zadania INT AUTO_INCREMENT PRIMARY KEY,
    nazwa_zadania VARCHAR(150) NOT NULL,
    priorytet ENUM('normalny', 'wysoki', 'niski'),
    opis longtext,
    pracownik_id int NOT NULL,
	foreign key (pracownik_id) references pracownik(id_pracownika) 
);

DESC zadanie;

UPDATE zadanie 
SET priorytet = default 
WHERE priorytet = 'normalny';

SET SQL_SAFE_UPDATES = 0;

INSERT INTO zadanie (nazwa_zadania, priorytet, opis, pracownik_id) 
VALUES ("sprawdzenie kolokwium", 'wysoki', 'Kolokwium grupy 3 z logiki', 1);

SELECT * FROM zadanie;