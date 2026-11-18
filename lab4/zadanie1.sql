ALTER TABLE zadanie DROP FOREIGN KEY zadanie_ibfk_1;
ALTER TABLE projekt DROP FOREIGN KEY menadzer_projektu;

ALTER TABLE pracownik MODIFY id_pracownika INT NOT NULL;
ALTER TABLE pracownik DROP PRIMARY KEY;

ALTER TABLE pracownik MODIFY id_pracownika 
INT NOT NULL auto_increment PRIMARY KEY;

ALTER TABLE zadanie 
ADD CONSTRAINT fk_zadanie_pracownik
FOREIGN KEY (pracownik_id)
REFERENCES pracownik(id_pracownika)
ON DELETE SET NULL;

ALTER TABLE projekt
ADD CONSTRAINT menadzer_projektu 
FOREIGN KEY (pracownik_id)
REFERENCES pracownik(id_pracownika);
