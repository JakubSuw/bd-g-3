SELECT * FROM pracownicy 
WHERE FIRST_NAME = "Agnieszka" AND 
pensja = 3900;

SELECT * FROM pracownicy
WHERE pensja BETWEEN 5000 AND 7000;

SELECT * FROM klienci
WHERE SHORT_NAME LIKE '%eco%' 
AND IS_COMPANY = 1;