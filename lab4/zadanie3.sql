ALTER TABLE projekt ADD COLUMN opis_kratki VARCHAR(50);

ALTER TABLE projekt MODIFY COLUMN opis_kratki VARCHAR(200);

UPDATE projekt SET opis_kratki = "MVP" WHERE id_projektu = 2;
UPDATE projekt SET opis_kratki = "Pilne wdrożenie" WHERE id_projektu = 3;
UPDATE projekt SET opis_kratki = "Faza testów" WHERE id_projektu = 5;
UPDATE projekt SET opis_kratki = "Rozwój funkcji" WHERE id_projektu = 4;

ALTER TABLE projekt DROP COLUMN opis_kratki;

SELECT * FROM projekt;