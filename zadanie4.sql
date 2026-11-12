CREATE TABLE sprint (
	id_sprintu INT NOT NULL auto_increment primary key,
	numer_sprintu int,
    data_rozpoczecia date,
    data_zakonczenia date
);

ALTER TABLE zadanie ADD COLUMN sprint_id INT;

ALTER TABLE zadanie
ADD constraint fk_zadanie_sprint 
foreign key (sprint_id) 
references sprint(id_sprintu)
ON delete set null;

INSERT INTO sprint (numer_sprintu, data_rozpoczecia, data_zakonczenia)
VALUES (1, '2026-11-12', '2026-11-26');

UPDATE zadanie 
SET sprint_id = 1 
WHERE id_zadania IN (1, 2);