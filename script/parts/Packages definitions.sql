
create or replace PACKAGE "AUTHENTICATION" AS

--============================================================================== 
-- Funkcja rejestracji użytkownika
--==============================================================================

    FUNCTION register_user(
        p_imie                     IN VARCHAR2,
        p_nazwisko                 IN VARCHAR2,
        p_email                    IN VARCHAR2,
        p_haslo                    IN VARCHAR2,
        p_potwierdzenie_hasla      IN VARCHAR2,
        p_ikona                    IN VARCHAR2 DEFAULT NULL
    ) RETURN NUMBER;

END "AUTHENTICATION";


create or replace package "AUTHORIZATION" as

--==============================================================================
-- Bibliotekarz
--==============================================================================

    FUNCTION is_librarian(
        p_user_id IN INT
    ) RETURN BOOLEAN;

end "AUTHORIZATION";


create or replace package "CRUD" as

--==============================================================================
-- Dodawanie publikacji
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
    );
--==============================================================================
-- Dodawanie wydania
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
    );

--==============================================================================
-- Dodawanie egzemplarzy
--==============================================================================
PROCEDURE DODAJ_EGZEMPLARZ (
        P_WydanieID         IN NUMBER,

        P_LiczbaEgzemplarzy IN INT      
    );

--==============================================================================
-- Dodawanie recenzji
--==============================================================================

PROCEDURE DODAJ_RECENZJE (
        P_WYDANIEID         IN NUMBER,
        P_OCENA             IN NUMBER,
        P_KOMENTARZ         IN VARCHAR2,
        P_UZYTKOWNIKID      IN NUMBER
);

end "CRUD";


create or replace package "REZERWACJA_PACKAGE" as

--==============================================================================
-- Dodawanie Rezerwacji Wyposazenia
--==============================================================================
PROCEDURE DODAJ_REZERWACJE_WYPOSAZENIA (
        P_DataRezerwacji   IN DATE,
        P_GodzinaOD        IN NUMBER,
        P_GodzinaDO        IN NUMBER,
        P_UzytkownikID     IN NUMBER,
        P_WyposazenieID    IN NUMBER
    );

--==============================================================================
-- Dodawanie Rezerwacji Sali
--==============================================================================
PROCEDURE DODAJ_REZERWACJE_SALI (
        P_DataRezerwacji   IN DATE,
        P_GodzinaOD        IN NUMBER,
        P_GodzinaDO        IN NUMBER,
        P_UzytkownikID     IN NUMBER,
        P_SALAID           IN NUMBER
    );

end "REZERWACJA_PACKAGE";


create or replace package "SALA_PACKAGE" as

--==============================================================================
-- Dodawanie Sali
--==============================================================================
PROCEDURE DODAJ_SALE (
        P_Nazwa                    IN VARCHAR2,
        P_Opis                     IN VARCHAR2,
        P_MaksymalnaPojemnosc      IN VARCHAR2,
        P_Zdjecie                  IN INT
    );

end "SALA_PACKAGE";


create or replace package "SUGESTIA_PACKAGE" as

--==============================================================================
-- Dodawanie SUGESTII
--==============================================================================
PROCEDURE DODAJ_SUGESTIE (
        P_Tytul            IN VARCHAR2,
        P_Autor            IN VARCHAR2,
        P_Gatunek          IN VARCHAR2,
        P_RokWydania       IN INT,      
        P_TypPublikacji    IN VARCHAR2,
        P_Argumentacja     IN VARCHAR2,
        P_UZYTKOWNIKID     IN NUMBER  
    );

--==============================================================================
-- Usuwanie SUGESTII
--==============================================================================

PROCEDURE USUN_SUGESTIE (
        P_SUGESTIAID       IN INT
    );

end "SUGESTIA_PACKAGE";


create or replace package "WYPOZYCZENIE_PACKAGE" as

--==============================================================================
-- Wypożyczenie 
--==============================================================================
PROCEDURE WYPOZYCZ (
        P_UZYTKOWNIKID   IN NUMBER,
        P_EGZEMPLARZID   IN NUMBER
    );

--==============================================================================
-- Zwrócenie
--==============================================================================

PROCEDURE ZWROC (
        P_STATUS         IN VARCHAR2,
        P_UZYTKOWNIKID   IN NUMBER,
        P_EGZEMPLARZID   IN NUMBER
    );

end "WYPOZYCZENIE_PACKAGE";


create or replace package "ZAMOWIENIE_PACKAGE" as

--==============================================================================
-- Dodawanie Zamowienia
--==============================================================================
PROCEDURE DODAJ_ZAMOWIENIE (
        P_SUGESTIAID       IN INT
    );

--==============================================================================
-- Oznaczanie Zamowienia jako zakupione
--==============================================================================
PROCEDURE ZAKUPIONE_ZAMOWIENIE (
        P_ZAMOWIENIEID     IN INT
    );


end "ZAMOWIENIE_PACKAGE";

