CREATE TABLE projekt (
	id_projektu INT AUTO_INCREMENT PRIMARY KEY,
    nazwa_projektu VARCHAR (150),
    data_rozpoczecia DATE,
    data_zakonczenia DATE NULL,
    pracownik_id int not null
);

ALTER TABLE projekt ADD constraint menadzer_projektu foreign key (pracownik_id) references pracownik(id_pracownika);

INSERT INTO projekt (nazwa_projektu, data_rozpoczecia, data_zakonczenia, pracownik_id)
VALUES 
	('Nowa strona www', '2026-02-10', '2026-08-20', 1),
	('Aplikacja mobilna', '2026-10-01', NULL, 2);


ALTER TABLE zadanie ADD COLUMN projekt_id INT NOT NULL;

ALTER TABLE zadanie 
ADD constraint fk_zadanie_projekt
foreign key (projekt_id)
references projekt(id_projektu)
on delete cascade; 

SET SQL_SAFE_UPDATES = 1;
UPDATE zadanie SET projekt_id = 1;

SELECT * FROM projekt;

SELECT * FROM zadanie;

DESC projekt;