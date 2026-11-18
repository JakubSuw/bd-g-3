ALTER TABLE zadanie DROP FOREIGN KEY fk_zadanie_projekt;

ALTER TABLE zadanie 
ADD CONSTRAINT fk_zadanie_projekt
FOREIGN KEY (projekt_id)
REFERENCES projekt(id_projektu)
ON DELETE SET NULL;

DELETE FROM projekt WHERE id_projektu = 5;

SELECT * FROM zadanie;
