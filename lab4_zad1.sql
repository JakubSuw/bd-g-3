ALTER TABLE zadanie DROP FOREIGN KEY zadanie_ibfk_1;
ALTER TABLE projekt DROP FOREIGN KEY menadzer_projektu;

ALTER TABLE pracownik MODIFY id_pracownika INT NOT NULL;
ALTER TABLE pracownik DROP PRIMARY KEY;

ALTER TABLE pracownik MODIFY id_pracownika 
INT NOT NULL auto_increment PRIMARY KEY;