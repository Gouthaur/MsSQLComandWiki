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
AS - nadawanie aliasu kolumnie np. podczas SELECT lub jako wynik wyszukiwania

Operatory + i - mogą być używane na stringach do ich dodawania

NULL - brak przypisanych wartości w wierszu kolmny(pusty wiersz)
IS do sprawdzenia czy dana wartość jest np NULL

NOT - odwrócenie warunku typu bool np : IS NOT NULL

Przykład: WHERE  FirstName = 'Don' OR/AND FirstName = 'David';
OR - lub np: Kolumna1 = 'cos1' OR Kolumna2 = 'cos2' - jeden warunek z dwóch musi być spełniony ....  
AND - i np;  Kolumna1 = 'cos1' OR Kolumna2 = 'cos2' - oba warunki muszą byc spełenione .....


IN - Używane do wybrania wielu wartości z jednej kolumny 
Kolumna IN (wartość1, wartość2)

SELECT FirstName, LastName FROM Person.Person
WHERE  FirstName IN ('Don','David'); 

BETWEEN - Używane do wybierania wartości z przedziału
Kolumna BETWEEN Wartość1 AND Wartość2
SELECT FirstName, LastName FROM Person.Person
WHERE  FirstName IN ('Don','David'); 

LIKE - do wybarania wedle wzoru % i _ na stringach  
% - 0 lub więcej znaków np: WHERE Kolumna LIKE = 'P%' - Wszystkie wyniki zaczynajace się od P
_ - ilość wpasowanych znaków np: WHERE Kolumna LIKE = 'P___' - Wszyskie wyniki zaczynajace sie od P i mające 3 dodatkwe znaki                                                                

ORDER BY - Ustawienie kolejności według danej kolumny. Dla string alfabetycznie dla liczb rosnąco
SELECT Kolumna1, Kolumna2 FROM Tablica
ORDER BY Kolumna1, Kolumna2 ASC; 
Przykład:
SELECT FirstName, LastName FROM Person.Person
ORDER BY FirstName DESC,LastName ASC;

DESC - ustawia malejąco
SELECT Kolumna1, Kolumna2 FROM Tablica
ORDER BY Kolumna1 DESC, Kolumna2 DESC;  


