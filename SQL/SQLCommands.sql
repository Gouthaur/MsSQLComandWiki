-- Komentarz w SQL 

1) Wybieranie danych z tablicy: SELECT

Wszystkie kolumny: SELECT * FROM Nazwa tablicy ;
* - wszystkie kolumny
Przykład: SELECT * FROM HumanResources.Employee;

Wybrane kolumny: SELECT  Kolumna1, Kolumna2 FROM Tablica;
Przykład: SELECT  NationalIDNumber, JobTitle FROM HumanResources.Employee;

DISTINCT - pokazuje jedynie unikalne wiersze  SELECT DISTINCT Kolumna FROM Tablica;
Przykład: SELECT DISTINCT JobTitle FROM HumanResources.Employee;

WHERE - pokazuje wiersze zgodne z warunkiem: WHERE operator warunek
Przykład: SELECT * FROM HumanResources.Employee;
          WHERE JobTitle = 'Kozak'; - pokaże Kozaków z tablicy
Operatory porónania: 
= równe
>= wieksze bądz równe
<> różne 
<= mniejsze bądz równe
<  mniejsze
>  wieksze

Dodawanie tymczasowej kolumny do wyniku wyszukiwania:
SELECT Kolumna1, Kolumna2, TymczasowaKolumna AS AliasTymczasowejKolumny FROM Tablica
Przykład: SELECT SubTotal,TaxAmt, SubTotal - TaxAmt AS Sum FROM Purchasing.PurchaseOrderHeader;
Tymczasowa kolumna może być wynikem działań:  + - / *
AS - nadawanie aliasu kolumnie 