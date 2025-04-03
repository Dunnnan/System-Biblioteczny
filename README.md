# System-Biblioteczny

## Spis treści
1. [Wstęp](#wstep)
2. [Schemat relacyjny](#schemat-relacyjny)
3. [Opis funkcjonalności](#opis-funkcjonalnosci)
   - [Wszyscy](#wszyscy):
   - [Bibliotekarz](#bibliotekarz):
5. [Uwagi](#uwagi)
6. [Pomysły usprawnień](#pomysly-usprawnien)

<a id="wstep"></a>
## Wstęp
System Biblioteczny to aplikacja bazodanowa stworzona w środowisku Oracle APEX (wersja 24.1.4), zaprojektowana z myślą o kompleksowym zarządzaniu pojedynczą placówką biblioteczną. System umożliwia zarówno pracownikom, jak i czytelnikom sprawne wykonywanie codziennych operacji związanych z obsługą biblioteki.
Dzięki intuicyjnemu interfejsowi oraz zaawansowanym mechanizmom walidacji i automatyzacji, aplikacja usprawnia procesy takie jak:
- rejestracja i zarządzanie kontami użytkowników,
- wyszukiwanie oraz rezerwacja książek i zasobów bibliotecznych,
- kontrola wypożyczeń oraz naliczanie ewentualnych opłat za opóźnienia,
- administrowanie salami i wyposażeniem dostępnym dla czytelników,

<a id="schemat-relacyjny"></a>
## Schemat relacyjny
![Schemat Relacyjny](https://github.com/Dunnnan/System-Biblioteczny/blob/main/SchematRelacyjny.png?raw=true)

<a id="opis-funkcjonalnosci"></a>
## Opis funkcjonalności
W systemie istnieją 3 typy kont różniące się poziomem funkcjonalności:
- **Czytelnik** - podstawowe funkcjonalności
- **Bibliotekarz** - podstawowe funkcjonalności + pracownicze funkcjonalności
- **Zablokowany** - restrykcja funkcjonalności podstawowych

<a id="wszyscy"></a>
## Wszyscy
### Tworzenie konta
Użytkownik systemu ma możliwość stworzenia tylko i wyłącznie konta typu **Czytelnik**. Konta pracownicze muszą zostać utworzone przez administratora bazy danych.
W systemie nie mogą istnieć konta o takim samych email-u. Dodatkowo użytkownik ma możliwość wybrania ikony profilu, później wyświetlającej się przy napisanych przez użytkownika recenzjach. Pole informuje jeżeli adres ikony jest niepoprawny. W takiej sytaucji oraz w momencie nie uzupełnienia pola, użytkownikowi (jeżeli nie dokonał korekty) przypisywana jest ikona domyślna.
![Tworzenie konta](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Stw%C3%B3rz%20konto%201.png?raw=true)

### Logowanie
Użytkownik loguje się e-mailem oraz hasłem. W przypadku kiedy konto zostało zablokowane, logowanie zakończy się niepowodzeniem i użytkownikowi zostanie wyświetlony odpowiedni komunikat.
![Schemat Relacyjny](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Zaloguj%202.png?raw=true)

### Strona Główna
Home to automatycznie ładowana strona po zalogowaniu. Wyświetla przywitanie użytkownika - jego imię oraz nazwisko, liczbę niezwróconych książek oraz komunikaty napisane przez pracowników.
![Strona Główna](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Strona%20g%C5%82%C3%B3wna%203.png?raw=true)

### Znajdź egzemplarz
Strona pozwalająca użytkownikowi znaleźć stronę szczegółową konkretnego egzemplarza po jego identyfikatorze (docelowo - kod umieszczany na egzemplarzu).
![Znajdź egzemplarz](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Znajdz%20Egzemplarz%204.png)

### Publikacje
Strona pozwalająca użytkownikowi na przegląd publikacji dostępnych w placówce, ich wyszukiwanie, filtrację oraz sortowanie.
![Publikacje](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Publikacje%205.png)

### Szczegóły
Strona pozwalająca użytkownikowi na przegląd szczegółów dotyczących konkretnego wydania, m.in liczby dostępnych egzemplarzy (niewypożyczonych), wydań powiązanych, recenzji, a także pozwala na napisanie własnej recenzji. 
![Szczegóły1](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Szczeg%C3%B3%C5%82y%206-1.png?raw=true)
![Szczegóły2](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Szczeg%C3%B3%C5%82y%206.png?raw=true)

### Sale
Strona pozwalająca użytkownikowi na przegląd sali możliwych do rezerwacji w placówce oraz na dokonanie rezerwacji w wolnym terminie. 
![Sale1](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Sale%207.png?raw=true)
![Sale1](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Sale%208.png?raw=true)

### Wyposażenie
Strona pozwalająca użytkownikowi na przegląd wyposażenia możliwego do rezerwacji w placówce oraz na dokonanie rezerwacji w wolnym terminie. 
![Wyposażenie](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Wyposazenie%209.png?raw=true)

### Napisz sugestię
Strona pozwalająca użytkownikowi na napisanie sugestii dotyczącej zakupu nowej publikacji bądź wydania do placówki.
![Napisz sugestię](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Napisanie%20sugestii%2010.png?raw=true)

### Moje wypożyczenia
Strona pozwalająca użytkownikowi na przejrzenie swoich wypożyczeń i ich statusów (czy zostały zwrócone, a jeżeli nie, to do kiedy trzeba to zrobić). 
![Moje wypożyczenia](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Moje%20wypozyczenia%2011.png?raw=true)

### Moje rezerwacje
Strona pozwalająca użytkownikowi na przejrzenie swoich **przyszłych** rezerwacji i ich ewentualne odwołanie.
![Moje rezerwacje](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Moje%20rezerwacje%2012.png?raw=true)

### Moje kary
W systemie istnieją 3 typy kar różniące się wysokością:
- **Przekroczenie terminu oddania książki** - 2zł (naliczane za każdy 1 dzień opóźnienia)
- **Uszkodzenie egzemplarza** - 30zł (naliczane przy zwrocie egzemplarza)
- **Zniszczenie egzemplarza** - 60zł (naliczane przy zwrocie egzemplarza)

Strona pozwala użytkownikowi na przejrzenie swoich **nieopłaconych** kar i ich sumy. W systemie zdefiniowano przykładową kwotę **100zł** jako limit, po którego przekroczeniu następuje zablokowanie konta.
![Moje kary](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Moje%20kary%2013.png?raw=true)

<a id="bibliotekarz"></a>
## Bibliotekarz
### Modyfikuj publikacje
W systemie istnieje następująca hierarchia:
- Publikacje
   - Wydania
       - Egzemplarze

Strona pozwala użytkownikowi na wszelkie operacje dodawania, edycji, usuwania, filtrowania, sortowania, wyszukiwania dzieł na każdym poziomie (w celu przejścia na niższy poziom hierarchi należy kliknąć odnośnik przekierowujący do wydań/egzemplarzy konkretnej pozycji). Im wyższy poziom tym opcja dodania dzieła będzie wymagać większej liczby uzupełnień (dla tworzenia publikacji musimy zdefiniować publikację, wydanie oraz liczbę egzemplarzy, dla tworzenia wydania już tylko wydanie oraz liczbę egzemplarzy itd.). 
![Modyfikuj publikacje](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Modyfikacja%20publikacji%2014.png?raw=true)

### Modyfikuj sale
Strona pozwala użytkownikowi na operacje dodawania, edycji, usuwania, sortowania sal.
![Modyfikuj sale](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Modyfikacja%20sali%2015.png?raw=true)

### Modyfikuj wyposażenie
Strona pozwala użytkownikowi na operacje dodawania, edycji, usuwania, sortowania wyposażenia.
![Modyfikuj wyposażenie](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Modyfikacja%20wyposazenia%2016.png?raw=true)

### Modyfikuj rezerwacje
Strona pozwala użytkownikowi na odwołanie rezerwacji (przed godziną zakończenia rezerwacji) w sytuacjach kiedy przykładowo ktoś nie potwierdził przybycia.
![Modyfikuj rezerwacje](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Modyfikacja%20rezerwacji%2017.png?raw=true)

### Sugestie
Strona pozwala użytkownikowi na przegląd sugestii napisanych przez użytkowników oraz ich usunięcie, bądź przeniesienie do listy zamówień.
![Sugestie](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Sugestie%2018.png?raw=true)

### Zamówienia
Strona pozwala użytkownikowi na przegląd sugestii oznaczonych jako "do zakupu" oraz ich usunięcie po dokonaniu zamówienia.
![Zamówienia](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Zam%C3%B3wienia%2019.png?raw=true)

### Wypożycz
Strona pozwala na wypożyczenie egzemplarza. (Docelowo byłby to skan kodu na egzemplarzu, oraz skan karty bibliotecznej użytkownika).
![Wypożycz](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Wypozycz%2020.png?raw=true)

### Zwróć
Strona pozwala na zwrócenie egzemplarza. Bibliotekarz powinien sprawdzić w jakim stanie egzemplarz został zwrócony - i na tej podstawie wybrać status. Status "uszkodzony" albo "zniszczony" spowoduje automatyczne nałożenie kary na użytkownika zwracającego egzemplarz. (Docelowo byłby to skan kodu na egzemplarzu, oraz skan karty bibliotecznej użytkownika).
![Zwróć](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Wypozycz%2020.png?raw=true)

### Kary
Strona pozwala użytkownikowi na przegląd kar konkretnych użytkowników. Służy do usuwania kar z systemu po ich opłaceniu przez użytkownika.
![Kary](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Kary%2022.png?raw=true)

### Użytkownicy
Strona pozwala użytkownikowi na przegląd kont użytkowników i ich statusów. Służy do odblokowywania kont w momencie opłacenia kar przez użytkownika.
![Użytkownicy](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Kary%2023.png?raw=true)

### Napisz komunikat
Strona pozwala użytkownikowi na napisanie komunikatu widocznego przez wszystkich użytkowników w zakladce [Home](#strona-glowna).
![Napisz komunikat](https://github.com/Dunnnan/System-Biblioteczny/blob/main/images/Napisz%20komunikat%2024.png?raw=true)



<a id="uwagi"></a>
## Uwagi.
1. W aplikacji zaimplementowano kompleksowe walidacje oraz komunikaty ostrzegawcze, które ułatwiają korzystanie i minimalizują ryzyko błędów. Przykłady m.in obejmują:
  - weryfikację poprawności haseł,
  - komunikaty o zablokowaniu konta,
  - uniemożliwienie wypożyczania książek w przypadku blokady konta,
  - sprawdzanie poprawności identyfikatorów egzemplarzy i użytkowników,
  - potwierdzenia operacji inwazyjnych, takich jak usunięcie danych.

2. Aby zapewnić płynne działanie aplikacji oraz wygodę użytkowników, wykorzystano DBMS Scheduler do automatycznego i cyklicznego uruchamiania funkcji. Mechanizm ten odpowiada za:
  - dynamiczne zarządzanie dostępnością zasobów rezerwacyjnych, takich jak sale i wyposażenie,
  - naliczanie kar za przekroczenie terminu zwrotu książek.

```sql
BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'job_generuj_dostepnosc',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN GENERUJ_DOSTEPNOSC(); END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'FREQ=DAILY; BYHOUR=0; BYMINUTE=0;',
    enabled         => TRUE
  );

  DBMS_SCHEDULER.create_job (
    job_name        => 'job_generuj_kary',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN GENERUJ_KARY(); END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'FREQ=DAILY; BYHOUR=0; BYMINUTE=0;',
    enabled         => TRUE
  );
END;
```

<a id="pomysly-usprawnien"></a>
## Pomysły usprawnień  
1. **Ulepszenie strony głównej**  
   Obecnie strona główna jest dość pusta. Warto wzbogacić ją o mechanizmy podsumowujące aktywność użytkownika, np.:  
   - **Raport okresowy** – liczba przeczytanych stron, obejrzanych minut, wypożyczonych egzemplarzy, napisanych recenzji.  
   - **Statystyki ogólne** – podsumowanie całkowitej aktywności użytkownika.  
   - **Rekomendacje** – system sugerujący treści na podstawie historii wypożyczeń i recenzji.  

2. **Zmiana ikony profilu**  
   Obecnie użytkownik może ustawić ikonę profilu jedynie podczas tworzenia konta. Warto umożliwić jej zmianę w ustawieniach konta, bez konieczności jego ponownego zakładania.  

3. **Strona profilu użytkownika**  
   Dodanie strony zawierającej szczegółowe informacje o użytkowniku, takie jak jego statystyki czy data utworzenia konta. Może to być także podgląd dostępny przy wyświetlaniu recenzji.  

4. **Zaawansowane zarządzanie dostępnością zasobów**  
   Obecnie dostępność zasobów generowana jest na 14 dni do przodu, pomijając weekendy i codziennie usuwając starsze wpisy. Ma to na celu zapobieganie rezerwacjom na zbyt odległe terminy oraz w dni, kiedy placówka jest zamknięta. System jednak nie uwzględnia świąt ani sytuacji losowych. Warto dodać ekran umożliwiający łatwą, ręczną edycję dostępności zarówno dla pojedynczego zasobu, jak i dla wszystkich jednocześnie.  

5. **Automatyzacja procesu rezerwacji**  
   Aktualnie rezerwacje wymagają ręcznego potwierdzenia przez pracownika biblioteki, co oznacza, że w przypadku nieprzybycia użytkownika na czas, rezerwacja musi być usunięta ręcznie. Można usprawnić ten proces, wprowadzając mechanizm automatycznego anulowania rezerwacji, jeśli użytkownik nie potwierdzi swojego przybycia w określonym czasie od rozpoczęcia rezerwacji.  

6. **Optymalizacja systemu kar**  
   - Warto przeanalizować, czy obecnie ustalony limit kar nie jest zbyt wysoki.  
   - Można rozważyć rozszerzenie wymaganych danych przy zakładaniu konta w bibliotece.  
   - Pracownik biblioteki powinien mieć możliwość łatwego podglądu sumy kar użytkownika oraz ich jednoczesnego usunięcia.  

7. **Podział funkcjonalności konta "Bibliotekarz"**  
   W celu usprawnienia zarządzania biblioteką warto rozważyć rozbicie funkcji konta **Bibliotekarz** na kilka ról(dostęp do tylko określonych stron aplikacji):  
   - **Bibliotekarz** – zarządzanie księgozbiorem, zwroty egzemplarzy, usuwanie kar, przegląd sugestii.  
   - **Menadżer** – zarządzanie zamówieniami.  
   - **Wypożyczomat** – system automatycznego wypożyczania egzemplarzy, np. przy pomocy stanowiska ze skanerem.  
   - **Rezerwomat** – system umożliwiający potwierdzenie przybycia na rezerwację.  
