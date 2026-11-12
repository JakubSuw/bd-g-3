CREATE TABLE status (
	id_statusu INT NOT NULL auto_increment PRIMARY KEY,
    nazwa_statusu VARCHAR(20)
);

INSERT INTO status (nazwa_statusu) 
VALUES
	("Do zrobienia"),
    ("W trakcie"),
    ("Zakończone");
    
CREATE TABLE zadanie_has_status (
	id_zdarzenia INT NOT NULL auto_increment PRIMARY KEY,
    zadanie_id int not null,
    status_id int not null,
    data_zdarzenia datetime default(current_timestamp()),
    foreign key (zadanie_id) references zadanie(id_zadania),
    foreign key (status_id) references status(id_statusu)
);

INSERT INTO zadanie_has_status (zadanie_id, status_id, data_zdarzenia) 
VALUES 
	(1, 1, "2026-11-12 09:00:00"),
    (1, 2, "2026-11-12 15:45:00"),
    (1, 3, "2026-11-12 10:30:00");
    
    
SELECT * FROM projekt;

SELECT * FROM zadanie;

ALTER TABLE zadanie DROP FOREIGN KEY fk_zadanie_sprint;
DROP TABLE sprint;

DELETE FROM projekt WHERE id_projektu = 1;
    