CREATE TABLE pracownik (
	id_pracownika INT auto_increment primary key,
	imie VARCHAR(50) not null
);

DESC pracownik;

ALTER TABLE pracownik 
ADD COLUMN data_urodzenia DATE NOT NULL;

INSERT INTO pracownik (imie, nazwisko, data_urodzenia)
VALUES 
	("Jakub", "Nowak", "10.10.2000"),
    ("Maciej", "Kowalski", "29.10.2003"),
    ("Tomasz", "Lewandowski", "01.01.2001");
    
UPDATE pracownik 
SET data_urodzenia = "2001.01.01" 
WHERE id_pracownika = 3;
    
SELECT * FROM pracownik;