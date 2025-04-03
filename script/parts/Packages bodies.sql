
create or replace PACKAGE BODY "AUTHENTICATION" AS

--============================================================================== 
-- Implementacja funkcji rejestracji użytkownika
--==============================================================================
    
    FUNCTION register_user(
        p_imie                     IN VARCHAR2,
        p_nazwisko                 IN VARCHAR2,
        p_email                    IN VARCHAR2,
        p_haslo                    IN VARCHAR2,
        p_potwierdzenie_hasla      IN VARCHAR2,
        p_ikona                    IN VARCHAR2 DEFAULT NULL
    ) RETURN NUMBER IS
        v_user_id    uzytkownik.uzytkownikid%TYPE;
        v_exists     NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_exists
        FROM uzytkownik
        WHERE email = p_email;

        IF v_exists > 0 THEN
            RAISE_APPLICATION_ERROR(-20001, 'Konto o podanym emailu już istnieje.');
        END IF;

        IF upper(p_haslo) != upper(p_potwierdzenie_hasla) THEN
            RAISE_APPLICATION_ERROR(-20001, 'Wpisane hasła się nie zgadzają!');
        END IF;

        INSERT INTO uzytkownik (
            imie,
            nazwisko,
            email,
            haslo,
            datarejestracji,
            statuskonta,
            zdjecie
        ) VALUES (
            p_imie,
            p_nazwisko,
            p_email,
            p_haslo,
            SYSDATE,
            'Czytelnik',
            CASE 
                WHEN p_ikona IS NOT NULL THEN p_ikona
                ELSE 'https:

i.pinimg.com
736x
9d
8b
b0
9d8bb0df052f1cedc767c5c2d3d45ad6.jpg'
            END
        )
        RETURNING uzytkownikid INTO v_user_id;

        APEX_AUTHENTICATION.LOGIN(
            p_username => p_email,
            p_password => p_haslo
        );


        COMMIT;

        RETURN v_user_id;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END register_user;

END "AUTHENTICATION";


create or replace package body "AUTHORIZATION" as

--==============================================================================
-- Implementacja sprawdzenia czy użytkownik jest bibliotekarzem
--==============================================================================

FUNCTION is_librarian(p_user_id INT) 
RETURN BOOLEAN IS
    v_status VARCHAR(50);
BEGIN
    SELECT StatusKonta INTO v_status
    FROM Uzytkownik
    WHERE UzytkownikID = p_user_id;

    IF v_status = 'Bibliotekarz' THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN FALSE;
END;

end "AUTHORIZATION";


create or replace package body "CRUD" as

--==============================================================================
-- Implementacja dodawania publikacji
--==============================================================================

PROCEDURE DODAJ_PUBLIKACJE (
        P_Tytul             IN VARCHAR2,
        P_Gatunek           IN VARCHAR2,
        P_Cykl              IN VARCHAR2, 
        P_TypWydania        IN VARCHAR2, 
 
        P_Autor             IN VARCHAR2, 
        P_Okladka           IN VARCHAR2, 
        P_Rok               IN NUMBER, 
        P_Podgatunek        IN VARCHAR2,
        P_Opis              IN VARCHAR2, 

         
        P_CzasTrwania       IN NUMBER,      
        P_Produkcja         IN VARCHAR2,
         
        P_ISBN              IN VARCHAR2, 
        P_Wydawnictwo       IN VARCHAR2, 
        P_LiczbaStron       IN NUMBER,      
        
        P_LiczbaEgzemplarzy IN NUMBER    
    ) AS
        v_publikacja_id INT;
        v_wydanie_film_id INT;
        v_wydanie_ksiazka_id INT;
    BEGIN
        INSERT INTO Publikacja (Tytul, Gatunek, Cykl)
        VALUES (P_Tytul, P_Gatunek, P_Cykl)
        RETURNING PublikacjaID INTO v_publikacja_id;

        -- Wstawienie danych w zależności od typu wydania
        IF P_TypWydania = 'Film' THEN
            INSERT INTO Wydanie (TypWydania, Okladka, Rok, Autor, Podgatunek, Opis, CzasTrwania, Produkcja, ISBN, Wydawnictwo, LiczbaStron, PublikacjaID)
            VALUES (P_TypWydania, P_Okladka, P_Rok, P_Autor, P_Podgatunek, P_Opis, P_CzasTrwania, P_Produkcja, NULL, NULL, NULL, v_publikacja_id)
            RETURNING WydanieID INTO v_wydanie_film_id;

            FOR i IN 1..P_LiczbaEgzemplarzy LOOP
                INSERT INTO Egzemplarz (WydanieID, Status)
                VALUES (v_wydanie_film_id, 'Dostępny');
            END LOOP;

        ELSIF P_TypWydania = 'Książka' THEN
            INSERT INTO Wydanie (TypWydania, Okladka, Rok, Autor, Podgatunek, Opis, CzasTrwania, Produkcja, ISBN, Wydawnictwo, LiczbaStron, PublikacjaID)
            VALUES (P_TypWydania, P_Okladka, P_Rok, P_Autor, P_Podgatunek, P_Opis, NULL, NULL, P_ISBN, P_Wydawnictwo, P_LiczbaStron, v_publikacja_id)
            RETURNING WydanieID INTO v_wydanie_ksiazka_id;

            FOR i IN 1..P_LiczbaEgzemplarzy LOOP
                INSERT INTO Egzemplarz (WydanieID, Status)
                VALUES (v_wydanie_ksiazka_id, 'Dostępny');
            END LOOP;

        END IF;

        COMMIT;
    END DODAJ_PUBLIKACJE;

--==============================================================================
-- Implementacja dodawania wydania
--==============================================================================
PROCEDURE DODAJ_WYDANIE (
        P_PUBLIKACJAID      IN NUMBER,
        P_TypWydania        IN VARCHAR2, 
 
        P_Autor             IN VARCHAR2, 
        P_Okladka           IN VARCHAR2, 
        P_Rok               IN NUMBER, 
        P_Podgatunek        IN VARCHAR2,
        P_Opis              IN VARCHAR2, 

        P_CzasTrwania       IN NUMBER,      
        P_Produkcja         IN VARCHAR2,
         
        P_ISBN              IN VARCHAR2, 
        P_Wydawnictwo       IN VARCHAR2, 
        P_LiczbaStron       IN NUMBER,      
        
        P_LiczbaEgzemplarzy IN NUMBER    
    ) AS
        v_wydanie_film_id INT;
        v_wydanie_ksiazka_id INT;
    BEGIN
        -- Wstawienie danych w zależności od typu wydania
        IF P_TypWydania = 'Film' THEN
            INSERT INTO Wydanie (TypWydania, Okladka, Rok, Autor, Podgatunek, Opis, CzasTrwania, Produkcja, ISBN, Wydawnictwo, LiczbaStron, PublikacjaID)
            VALUES (P_TypWydania, P_Okladka, P_Rok, P_Autor, P_Podgatunek, P_Opis, P_CzasTrwania, P_Produkcja, NULL, NULL, NULL, P_PublikacjaID)
            RETURNING WydanieID INTO v_wydanie_film_id;

            FOR i IN 1..P_LiczbaEgzemplarzy LOOP
                INSERT INTO Egzemplarz (WydanieID, Status)
                VALUES (v_wydanie_film_id, 'Dostępny');
            END LOOP;

        ELSIF P_TypWydania = 'Książka' THEN
            INSERT INTO Wydanie (TypWydania, Okladka, Rok, Autor, Podgatunek, Opis, CzasTrwania, Produkcja, ISBN, Wydawnictwo, LiczbaStron, PublikacjaID)
            VALUES (P_TypWydania, P_Okladka, P_Rok, P_Autor, P_Podgatunek, P_Opis, NULL, NULL, P_ISBN, P_Wydawnictwo, P_LiczbaStron, P_PublikacjaID)
            RETURNING WydanieID INTO v_wydanie_ksiazka_id;

            FOR i IN 1..P_LiczbaEgzemplarzy LOOP
                INSERT INTO Egzemplarz (WydanieID, Status)
                VALUES (v_wydanie_ksiazka_id, 'Dostępny');
            END LOOP;

        END IF;

        COMMIT;
    END DODAJ_WYDANIE;


--==============================================================================
-- Implementacja dodawania egzemplarzy
--==============================================================================
PROCEDURE DODAJ_EGZEMPLARZ (
        P_WydanieID         IN NUMBER,

        P_LiczbaEgzemplarzy IN INT       
    ) AS
    BEGIN
        FOR i IN 1..P_LiczbaEgzemplarzy LOOP
            INSERT INTO Egzemplarz (WydanieID, Status)
            VALUES (P_WydanieID, 'Dostępny');
        END LOOP;

        COMMIT;
    END DODAJ_EGZEMPLARZ;


--==============================================================================
-- Implementacja dodawania recenzji
--==============================================================================

PROCEDURE DODAJ_RECENZJE (
        P_WYDANIEID         IN NUMBER,
        P_OCENA             IN NUMBER,
        P_KOMENTARZ         IN VARCHAR2,
        P_UZYTKOWNIKID      IN NUMBER
    ) AS
    BEGIN
        INSERT INTO RECENZJA (WYDANIEID, DATARECENZJI, OCENA, KOMENTARZ, UZYTKOWNIKID)
        VALUES (P_WYDANIEID, SYSDATE, P_OCENA, P_KOMENTARZ, P_UZYTKOWNIKID);
        
        COMMIT;
    END DODAJ_RECENZJE;



end "CRUD";


create or replace package body "REZERWACJA_PACKAGE" as

--==============================================================================
-- Implementacja dodawania Rezerwacji Wyposazenia
--==============================================================================
PROCEDURE DODAJ_REZERWACJE_WYPOSAZENIA (
        P_DataRezerwacji   IN DATE,
        P_GodzinaOD        IN NUMBER,
        P_GodzinaDO        IN NUMBER,
        P_UzytkownikID     IN NUMBER,
        P_WyposazenieID    IN NUMBER
    ) AS
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_count
        FROM REZERWACJA r
        WHERE 
            r.DATAREZERWACJI = P_DataRezerwacji AND
            r.WYPOSAZENIEID = P_WyposazenieID AND
            (
                r.GODZINAOD < P_GodzinaDO AND
                r.GODZINADO > P_GodzinaOD
            );

        IF v_count > 0 THEN
            RAISE_APPLICATION_ERROR(-20001, 'Nie można dodać rezerwacji. Termin jest już zajęty.');
        ELSE
            INSERT INTO REZERWACJA(DATAREZERWACJI, GODZINAOD, GODZINADO, UZYTKOWNIKID, SALAID, WYPOSAZENIEID)
            VALUES(P_DataRezerwacji, P_GodzinaOD, P_GodzinaDO, P_UzytkownikID, NULL, P_WyposazenieID);

            COMMIT;
        END IF;
    END DODAJ_REZERWACJE_WYPOSAZENIA;
    
--==============================================================================
-- Implementacja dodawania Rezerwacji Sali
--==============================================================================

PROCEDURE DODAJ_REZERWACJE_SALI (
        P_DataRezerwacji   IN DATE,
        P_GodzinaOD        IN NUMBER,
        P_GodzinaDO        IN NUMBER,
        P_UzytkownikID     IN NUMBER,
        P_SALAID           IN NUMBER
    ) AS
        v_count NUMBER;
    BEGIN
        SELECT COUNT(*) INTO v_count
        FROM REZERWACJA r
        WHERE 
            r.DATAREZERWACJI = P_DataRezerwacji AND
            r.SALAID = P_SalaID AND
            (
                r.GODZINAOD < P_GodzinaDO AND
                r.GODZINADO > P_GodzinaOD
            );

        IF v_count > 0 THEN
            RAISE_APPLICATION_ERROR(-20001, 'Nie można dodać rezerwacji. Termin jest już zajęty.');
        ELSE
            INSERT INTO REZERWACJA(DATAREZERWACJI, GODZINAOD, GODZINADO, UZYTKOWNIKID, SALAID, WYPOSAZENIEID)
            VALUES(P_DataRezerwacji, P_GodzinaOD, P_GodzinaDO, P_UzytkownikID, P_SalaID , NULL);

            COMMIT;
        END IF;
    END DODAJ_REZERWACJE_SALI;


end "REZERWACJA_PACKAGE";


create or replace package body "SALA_PACKAGE" as

--==============================================================================
-- Implementacja dodawania sali
--==============================================================================
PROCEDURE DODAJ_SALE (
        P_Nazwa                    IN VARCHAR2,
        P_Opis                     IN VARCHAR2,
        P_MaksymalnaPojemnosc      IN VARCHAR2,
        P_Zdjecie                  IN INT
    ) AS
    BEGIN
        INSERT INTO SALA(Nazwa, Opis, MaksymalnaPojemnosc, Zdjecie)
        VALUES(P_Nazwa, P_Opis, P_MaksymalnaPojemnosc, P_Zdjecie);

        COMMIT;

    END DODAJ_SALE;

end "SALA_PACKAGE";


create or replace package body "SUGESTIA_PACKAGE" as

--==============================================================================
-- Implementacja dodawania sugestii
--==============================================================================
PROCEDURE DODAJ_SUGESTIE (
        P_Tytul            IN VARCHAR2,
        P_Autor            IN VARCHAR2,
        P_Gatunek          IN VARCHAR2,
        P_RokWydania       IN INT,      
        P_TypPublikacji    IN VARCHAR2,
        P_Argumentacja     IN VARCHAR2,
        P_UZYTKOWNIKID     IN NUMBER  
    ) AS
        v_uzytkownik_id INT;
    BEGIN
        INSERT INTO SUGESTIA (TytulPropozycji, AutorPropozycji, GatunekPropozycji, RokWydania,   TypPublikacji,   Argumentacja,   DataSugestii, UzytkownikID)
        VALUES (              P_Tytul,         P_Autor,         P_Gatunek,         P_RokWydania, P_TypPublikacji, P_Argumentacja, SYSDATE,      P_UZYTKOWNIKID);

        COMMIT;
    END DODAJ_SUGESTIE;

--==============================================================================
-- Implementacja usuwania sugestii
--==============================================================================

PROCEDURE USUN_SUGESTIE (
        P_SUGESTIAID       IN INT
    ) AS
    BEGIN
        DELETE FROM SUGESTIA
        WHERE SUGESTIAID = P_SUGESTIAID;

        COMMIT;
    END USUN_SUGESTIE;

end "SUGESTIA_PACKAGE";


create or replace package body "WYPOZYCZENIE_PACKAGE" as

--==============================================================================
-- Implementacja wypożyczenia 
--==============================================================================
PROCEDURE WYPOZYCZ (
        P_UZYTKOWNIKID   IN NUMBER,
        P_EGZEMPLARZID   IN NUMBER
    ) AS
    BEGIN
        INSERT INTO WYPOZYCZENIE (DATAWYPOZYCZENIA, MAKSYMALNADATAZWROTU, STATUS, EGZEMPLARZID, UZYTKOWNIKID)
        VALUES (SYSDATE, SYSDATE+14, 'Wypożyczony', P_EGZEMPLARZID, P_UZYTKOWNIKID);

        UPDATE EGZEMPLARZ
        SET STATUS = 'Wypożyczony'
        WHERE EGZEMPLARZID = P_EGZEMPLARZID;

        COMMIT;
    END WYPOZYCZ;

--==============================================================================
-- Implementacja zwrócenia 
--==============================================================================
PROCEDURE ZWROC (
        P_STATUS         IN VARCHAR2,
        P_UZYTKOWNIKID   IN NUMBER,
        P_EGZEMPLARZID   IN NUMBER
    ) AS
        v_wypozyczenie_id NUMBER;
    BEGIN

        -- pobranie id wypożyczenia
        SELECT WYPOZYCZENIEID INTO v_wypozyczenie_id
        FROM WYPOZYCZENIE
        WHERE
            UZYTKOWNIKID = P_UZYTKOWNIKID AND
            EGZEMPLARZID = P_EGZEMPLARZID AND
            STATUS = 'Wypożyczony';

        -- zależnie od stanu zwrotu - nałożenie kary
        IF P_STATUS = 'Uszkodzony' THEN
            INSERT INTO KARA(KWOTA, POWOD, DATANALOZENIA, WYPOZYCZENIEID)
            VALUES (30, 'Uszkodzenie egzemplarza', SYSDATE, v_wypozyczenie_id);
        END IF;

        IF P_STATUS = 'Zniszczony' THEN
            INSERT INTO KARA(KWOTA, POWOD, DATANALOZENIA, WYPOZYCZENIEID)
            VALUES (60, 'Zniszczenie egzemplarza', SYSDATE, v_wypozyczenie_id);
        END IF;

        -- zamknięcie wypożyczenia
        UPDATE WYPOZYCZENIE
        SET STATUS = 'Zwrócony', 
            DATAZWROTU = SYSDATE
        WHERE STATUS = 'Wypożyczony' AND
            UZYTKOWNIKID = P_UZYTKOWNIKID AND
            EGZEMPLARZID = P_EGZEMPLARZID;
        
        -- zaktualizowanie stanu egzemplarza
        IF P_STATUS = 'Zniszczony' THEN
            UPDATE EGZEMPLARZ
            SET STATUS = 'Zniszczony'
            WHERE EGZEMPLARZID = P_EGZEMPLARZID;
        ELSE
            UPDATE EGZEMPLARZ
            SET STATUS = 'Dostępny'
            WHERE EGZEMPLARZID = P_EGZEMPLARZID;
        END IF;

        COMMIT;
    END ZWROC;

end "WYPOZYCZENIE_PACKAGE";


create or replace package body "ZAMOWIENIE_PACKAGE" as

--==============================================================================
-- Implementacja dodawania zamowienia
--==============================================================================
PROCEDURE DODAJ_ZAMOWIENIE (
        P_SUGESTIAID       IN INT
    ) AS
    BEGIN
        INSERT INTO ZAMOWIENIE (SugestiaID, DataDodania, Status)
        VALUES (P_SUGESTIAID, SYSDATE, 'Niezakupione');

        UPDATE SUGESTIA
        SET Status = 'Przetworzone'
        WHERE SugestiaID = P_SUGESTIAID;

        COMMIT;
    END DODAJ_ZAMOWIENIE;

--==============================================================================
-- Implementacja oznaczania zamowienia jako zakupione
--==============================================================================
PROCEDURE ZAKUPIONE_ZAMOWIENIE (
        P_ZAMOWIENIEID     IN INT
    ) AS
    BEGIN
        UPDATE ZAMOWIENIE
        SET STATUS = 'Zakupione'
        WHERE ZamowienieID = P_ZAMOWIENIEID; 

        COMMIT;
    END ZAKUPIONE_ZAMOWIENIE;

end "ZAMOWIENIE_PACKAGE";

