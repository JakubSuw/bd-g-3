SELECT FIRST_NAME, 
	LAST_NAME, 
	pensja, 
    pensja - (pensja * 0.25) AS "pensja netto",
    pensja * 0.25 AS "kwota podatku"
    FROM pracownicy;

SELECT * FROM klienci
WHERE TAX_IDENTIFIER IS NULL;

SELECT SHORT_NAME FROM klienci 
WHERE SHORT_NAME LIKE "K%"
OR SHORT_NAME LIKE "%ski"
ORDER BY SHORT_NAME DESC;