  CREATE TABLE "DOSTEPNOSC" 
   (	"DOSTEPNOSCID" NUMBER, 
	"DATA" DATE NOT NULL ENABLE, 
	"GODZINAOD" NUMBER(7,5) NOT NULL ENABLE, 
	"GODZINADO" NUMBER(7,5) NOT NULL ENABLE, 
	"SALAID" NUMBER, 
	"WYPOSAZENIEID" NUMBER, 
	 PRIMARY KEY ("DOSTEPNOSCID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "EGZEMPLARZ" 
   (	"EGZEMPLARZID" NUMBER, 
	"STATUS" VARCHAR2(50) NOT NULL ENABLE, 
	"WYDANIEID" NUMBER NOT NULL ENABLE, 
	 PRIMARY KEY ("EGZEMPLARZID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "HTMLDB_PLAN_TABLE" 
   (	"STATEMENT_ID" VARCHAR2(30), 
	"PLAN_ID" NUMBER, 
	"TIMESTAMP" DATE, 
	"REMARKS" VARCHAR2(4000), 
	"OPERATION" VARCHAR2(30), 
	"OPTIONS" VARCHAR2(255), 
	"OBJECT_NODE" VARCHAR2(128), 
	"OBJECT_OWNER" VARCHAR2(128), 
	"OBJECT_NAME" VARCHAR2(128), 
	"OBJECT_ALIAS" VARCHAR2(261), 
	"OBJECT_INSTANCE" NUMBER(*,0), 
	"OBJECT_TYPE" VARCHAR2(128), 
	"OPTIMIZER" VARCHAR2(255), 
	"SEARCH_COLUMNS" NUMBER, 
	"ID" NUMBER(*,0), 
	"PARENT_ID" NUMBER(*,0), 
	"DEPTH" NUMBER(*,0), 
	"POSITION" NUMBER(*,0), 
	"COST" NUMBER(*,0), 
	"CARDINALITY" NUMBER(*,0), 
	"BYTES" NUMBER(*,0), 
	"OTHER_TAG" VARCHAR2(255), 
	"PARTITION_START" VARCHAR2(255), 
	"PARTITION_STOP" VARCHAR2(255), 
	"PARTITION_ID" NUMBER(*,0), 
	"OTHER" LONG, 
	"DISTRIBUTION" VARCHAR2(30), 
	"CPU_COST" NUMBER(*,0), 
	"IO_COST" NUMBER(*,0), 
	"TEMP_SPACE" NUMBER(*,0), 
	"ACCESS_PREDICATES" VARCHAR2(4000), 
	"FILTER_PREDICATES" VARCHAR2(4000), 
	"PROJECTION" VARCHAR2(4000), 
	"TIME" NUMBER(*,0), 
	"QBLOCK_NAME" VARCHAR2(128)
   ) ;

  CREATE TABLE "KARA" 
   (	"KARAID" NUMBER, 
	"KWOTA" NUMBER(10,2) NOT NULL ENABLE, 
	"POWOD" VARCHAR2(255) NOT NULL ENABLE, 
	"DATANALOZENIA" DATE NOT NULL ENABLE, 
	"WYPOZYCZENIEID" NUMBER NOT NULL ENABLE, 
	 PRIMARY KEY ("KARAID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "KOMUNIKAT" 
   (	"KOMUNIKATID" NUMBER, 
	"TYTUL" VARCHAR2(255) NOT NULL ENABLE, 
	"TRESC" VARCHAR2(1024) NOT NULL ENABLE, 
	"ZDJECIE" VARCHAR2(255), 
	"DATAKOMUNIKATU" DATE NOT NULL ENABLE, 
	"UZYTKOWNIKID" NUMBER NOT NULL ENABLE, 
	 PRIMARY KEY ("KOMUNIKATID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "PUBLIKACJA" 
   (	"PUBLIKACJAID" NUMBER, 
	"TYTUL" VARCHAR2(255) NOT NULL ENABLE, 
	"GATUNEK" VARCHAR2(100) NOT NULL ENABLE, 
	"CYKL" VARCHAR2(255), 
	 PRIMARY KEY ("PUBLIKACJAID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "RECENZJA" 
   (	"RECENZJAID" NUMBER, 
	"OCENA" NUMBER NOT NULL ENABLE, 
	"KOMENTARZ" VARCHAR2(2048) NOT NULL ENABLE, 
	"DATARECENZJI" DATE NOT NULL ENABLE, 
	"WYDANIEID" NUMBER NOT NULL ENABLE, 
	"UZYTKOWNIKID" NUMBER NOT NULL ENABLE, 
	 CHECK (Ocena BETWEEN 1 AND 10) ENABLE, 
	 PRIMARY KEY ("RECENZJAID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "REZERWACJA" 
   (	"REZERWACJAID" NUMBER, 
	"DATAREZERWACJI" DATE NOT NULL ENABLE, 
	"GODZINAOD" NUMBER(7,5) NOT NULL ENABLE, 
	"GODZINADO" NUMBER(7,5) NOT NULL ENABLE, 
	"UZYTKOWNIKID" NUMBER NOT NULL ENABLE, 
	"SALAID" NUMBER, 
	"WYPOSAZENIEID" NUMBER, 
	 PRIMARY KEY ("REZERWACJAID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "SALA" 
   (	"SALAID" NUMBER, 
	"NAZWA" VARCHAR2(255) NOT NULL ENABLE, 
	"OPIS" VARCHAR2(1024) NOT NULL ENABLE, 
	"MAKSYMALNAPOJEMNOSC" NUMBER NOT NULL ENABLE, 
	"ZDJECIE" VARCHAR2(255) NOT NULL ENABLE, 
	 PRIMARY KEY ("SALAID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "SUGESTIA" 
   (	"SUGESTIAID" NUMBER, 
	"TYTULPROPOZYCJI" VARCHAR2(255) NOT NULL ENABLE, 
	"AUTORPROPOZYCJI" VARCHAR2(255) NOT NULL ENABLE, 
	"GATUNEKPROPOZYCJI" VARCHAR2(100) NOT NULL ENABLE, 
	"ROKWYDANIA" NUMBER NOT NULL ENABLE, 
	"TYPPUBLIKACJI" VARCHAR2(100) NOT NULL ENABLE, 
	"ARGUMENTACJA" VARCHAR2(1024), 
	"DATASUGESTII" DATE NOT NULL ENABLE, 
	"UZYTKOWNIKID" NUMBER NOT NULL ENABLE, 
	"STATUS" VARCHAR2(50) DEFAULT 'Nieprzetworzone' NOT NULL ENABLE, 
	 PRIMARY KEY ("SUGESTIAID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "UZYTKOWNIK" 
   (	"UZYTKOWNIKID" NUMBER, 
	"IMIE" VARCHAR2(255) NOT NULL ENABLE, 
	"NAZWISKO" VARCHAR2(255) NOT NULL ENABLE, 
	"EMAIL" VARCHAR2(255) NOT NULL ENABLE, 
	"HASLO" VARCHAR2(255) NOT NULL ENABLE, 
	"DATAREJESTRACJI" DATE NOT NULL ENABLE, 
	"STATUSKONTA" VARCHAR2(50) NOT NULL ENABLE, 
	"ZDJECIE" VARCHAR2(255) NOT NULL ENABLE, 
	 PRIMARY KEY ("UZYTKOWNIKID")
  USING INDEX  ENABLE, 
	 UNIQUE ("EMAIL")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "WYDANIE" 
   (	"WYDANIEID" NUMBER, 
	"TYPWYDANIA" VARCHAR2(50) NOT NULL ENABLE, 
	"OKLADKA" VARCHAR2(255) NOT NULL ENABLE, 
	"ROK" NUMBER NOT NULL ENABLE, 
	"AUTOR" VARCHAR2(255) NOT NULL ENABLE, 
	"PODGATUNEK" VARCHAR2(50), 
	"CZASTRWANIA" NUMBER, 
	"PRODUKCJA" VARCHAR2(255), 
	"ISBN" VARCHAR2(13), 
	"WYDAWNICTWO" VARCHAR2(255), 
	"LICZBASTRON" NUMBER, 
	"PUBLIKACJAID" NUMBER NOT NULL ENABLE, 
	"OPIS" VARCHAR2(2048) NOT NULL ENABLE, 
	 PRIMARY KEY ("WYDANIEID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "WYPOSAZENIE" 
   (	"WYPOSAZENIEID" NUMBER, 
	"NAZWA" VARCHAR2(255) NOT NULL ENABLE, 
	"OPIS" VARCHAR2(1024) NOT NULL ENABLE, 
	"TYP" VARCHAR2(255) NOT NULL ENABLE, 
	"ZDJECIE" VARCHAR2(255) NOT NULL ENABLE, 
	 PRIMARY KEY ("WYPOSAZENIEID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "WYPOZYCZENIE" 
   (	"WYPOZYCZENIEID" NUMBER, 
	"DATAWYPOZYCZENIA" DATE NOT NULL ENABLE, 
	"DATAZWROTU" DATE, 
	"MAKSYMALNADATAZWROTU" DATE NOT NULL ENABLE, 
	"STATUS" VARCHAR2(50) NOT NULL ENABLE, 
	"EGZEMPLARZID" NUMBER NOT NULL ENABLE, 
	"UZYTKOWNIKID" NUMBER NOT NULL ENABLE, 
	 PRIMARY KEY ("WYPOZYCZENIEID")
  USING INDEX  ENABLE
   ) ;

  CREATE TABLE "ZAMOWIENIE" 
   (	"ZAMOWIENIEID" NUMBER, 
	"DATADODANIA" DATE NOT NULL ENABLE, 
	"STATUS" VARCHAR2(50) NOT NULL ENABLE, 
	"SUGESTIAID" NUMBER NOT NULL ENABLE, 
	 PRIMARY KEY ("ZAMOWIENIEID")
  USING INDEX  ENABLE
   ) ;

  ALTER TABLE "DOSTEPNOSC" ADD CONSTRAINT "DOSTEPNOSC_CON" FOREIGN KEY ("SALAID")
	  REFERENCES "SALA" ("SALAID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "DOSTEPNOSC" ADD CONSTRAINT "DOSTEPNOSC_CON2" FOREIGN KEY ("WYPOSAZENIEID")
	  REFERENCES "WYPOSAZENIE" ("WYPOSAZENIEID") ON DELETE CASCADE ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "DOSTEPNOSC_T" 
before
insert on "DOSTEPNOSC"
for each row
begin
    :NEW.DOSTEPNOSCID := DOSTEPNOSC_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "DOSTEPNOSC_T" ENABLE;

  ALTER TABLE "EGZEMPLARZ" ADD FOREIGN KEY ("WYDANIEID")
	  REFERENCES "WYDANIE" ("WYDANIEID") ON DELETE CASCADE ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "EGZEMPLARZ_T" 
before
insert on "EGZEMPLARZ"
for each row
begin
    :NEW.EgzemplarzID := Egzemplarz_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "EGZEMPLARZ_T" ENABLE;

  ALTER TABLE "KARA" ADD CONSTRAINT "KARA_CON" FOREIGN KEY ("WYPOZYCZENIEID")
	  REFERENCES "WYPOZYCZENIE" ("WYPOZYCZENIEID") ON DELETE CASCADE ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "KARA_T" 
before
insert on "KARA"
for each row
begin
    :NEW.KARAID := KARA_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "KARA_T" ENABLE;

  ALTER TABLE "KOMUNIKAT" ADD FOREIGN KEY ("UZYTKOWNIKID")
	  REFERENCES "UZYTKOWNIK" ("UZYTKOWNIKID") ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "KOMUNIKAT_T" 
before
insert on "KOMUNIKAT"
for each row
begin
    :NEW.KOMUNIKATID := KOMUNIKAT_SEQ.NEXTVAL;
    :NEW.DATAKOMUNIKATU := SYSDATE;
end;
/
ALTER TRIGGER "KOMUNIKAT_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "PUBLIKACJA_T" 
before
insert on "PUBLIKACJA"
for each row
begin
    :NEW.PublikacjaID := Publikacja_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "PUBLIKACJA_T" ENABLE;

  ALTER TABLE "RECENZJA" ADD CONSTRAINT "RECENZJA_CON" FOREIGN KEY ("WYDANIEID")
	  REFERENCES "WYDANIE" ("WYDANIEID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "RECENZJA" ADD FOREIGN KEY ("UZYTKOWNIKID")
	  REFERENCES "UZYTKOWNIK" ("UZYTKOWNIKID") ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "RECENZJA_T" 
before
insert on "RECENZJA"
for each row
begin
    :NEW.RECENZJAID := RECENZJA_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "RECENZJA_T" ENABLE;

  ALTER TABLE "REZERWACJA" ADD CONSTRAINT "REZERWACJA_CON" FOREIGN KEY ("WYPOSAZENIEID")
	  REFERENCES "WYPOSAZENIE" ("WYPOSAZENIEID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "REZERWACJA" ADD CONSTRAINT "REZERWACJA_CON_SALA" FOREIGN KEY ("SALAID")
	  REFERENCES "SALA" ("SALAID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "REZERWACJA" ADD FOREIGN KEY ("UZYTKOWNIKID")
	  REFERENCES "UZYTKOWNIK" ("UZYTKOWNIKID") ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "REZERWACJA_T" 
before
insert on "REZERWACJA"
for each row
begin
    :NEW.REZERWACJAID := REZERWACJA_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "REZERWACJA_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "SALA_T" 
before
insert on "SALA"
for each row
begin
    :NEW.SALAID := SALA_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "SALA_T" ENABLE;

  ALTER TABLE "SUGESTIA" ADD FOREIGN KEY ("UZYTKOWNIKID")
	  REFERENCES "UZYTKOWNIK" ("UZYTKOWNIKID") ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "SUGESTIA_T" 
before
insert on "SUGESTIA"
for each row
begin
    :NEW.SugestiaID := Sugestia_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "SUGESTIA_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "UZYTKOWNIK_T" 
before
insert on "UZYTKOWNIK"
for each row
begin
    :NEW.UzytkownikID := Uzytkownik_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "UZYTKOWNIK_T" ENABLE;

  ALTER TABLE "WYDANIE" ADD FOREIGN KEY ("PUBLIKACJAID")
	  REFERENCES "PUBLIKACJA" ("PUBLIKACJAID") ON DELETE CASCADE ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "WYDANIE_T" 
before
insert on "WYDANIE"
for each row
begin
    :NEW.WydanieID := Wydanie_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "WYDANIE_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "WYPOSAZENIE_T" 
before
insert on "WYPOSAZENIE"
for each row
begin
    :NEW.WYPOSAZENIEID := WYPOSAZENIE_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "WYPOSAZENIE_T" ENABLE;

  ALTER TABLE "WYPOZYCZENIE" ADD FOREIGN KEY ("UZYTKOWNIKID")
	  REFERENCES "UZYTKOWNIK" ("UZYTKOWNIKID") ENABLE;
  ALTER TABLE "WYPOZYCZENIE" ADD CONSTRAINT "WYPOZYCZENIE_CON" FOREIGN KEY ("EGZEMPLARZID")
	  REFERENCES "EGZEMPLARZ" ("EGZEMPLARZID") ON DELETE CASCADE ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "WYPOZYCZENIE_T" 
before
insert on "WYPOZYCZENIE"
for each row
begin
    :NEW.WYPOZYCZENIEID := WYPOZYCZENIE_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "WYPOZYCZENIE_T" ENABLE;

  ALTER TABLE "ZAMOWIENIE" ADD FOREIGN KEY ("SUGESTIAID")
	  REFERENCES "SUGESTIA" ("SUGESTIAID") ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "ZAMOWIENIE_T" 
before
insert on "ZAMOWIENIE"
for each row
begin
    :NEW.ZamowienieID := Zamowienie_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "ZAMOWIENIE_T" ENABLE;
create or replace FUNCTION authenticate_user(p_username IN VARCHAR2, p_password IN VARCHAR2) 
RETURN BOOLEAN IS
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
      INTO v_count
      FROM Uzytkownik
     WHERE UPPER(email) = UPPER(p_username)
       AND haslo = p_password
       AND StatusKonta != 'Zablokowany';
    
    IF v_count > 0 THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;
/






































































  CREATE UNIQUE INDEX "SYS_C00140420" ON "UZYTKOWNIK" ("UZYTKOWNIKID") 
  ;

  CREATE UNIQUE INDEX "SYS_C00140421" ON "UZYTKOWNIK" ("EMAIL") 
  ;

  CREATE UNIQUE INDEX "SYS_C00140427" ON "PUBLIKACJA" ("PUBLIKACJAID") 
  ;

  CREATE UNIQUE INDEX "SYS_C00159538" ON "SUGESTIA" ("SUGESTIAID") 
  ;

  CREATE UNIQUE INDEX "SYS_C00159543" ON "ZAMOWIENIE" ("ZAMOWIENIEID") 
  ;

  CREATE UNIQUE INDEX "SYS_C00159571" ON "SALA" ("SALAID") 
  ;

  CREATE UNIQUE INDEX "SYS_C00159576" ON "WYPOSAZENIE" ("WYPOSAZENIEID") 
  ;

  CREATE UNIQUE INDEX "SYS_C00159581" ON "REZERWACJA" ("REZERWACJAID") 
  ;

  CREATE UNIQUE INDEX "SYS_C00159588" ON "DOSTEPNOSC" ("DOSTEPNOSCID") 
  ;

  CREATE UNIQUE INDEX "SYS_C00159884" ON "WYDANIE" ("WYDANIEID") 
  ;

  CREATE UNIQUE INDEX "SYS_C00159888" ON "EGZEMPLARZ" ("EGZEMPLARZID") 
  ;

  CREATE UNIQUE INDEX "SYS_C00160027" ON "RECENZJA" ("RECENZJAID") 
  ;

  CREATE UNIQUE INDEX "SYS_C00160605" ON "WYPOZYCZENIE" ("WYPOZYCZENIEID") 
  ;

  CREATE UNIQUE INDEX "SYS_C00160612" ON "KARA" ("KARAID") 
  ;

  CREATE UNIQUE INDEX "SYS_C00160619" ON "KOMUNIKAT" ("KOMUNIKATID") 
  ;
















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
/
create or replace package "AUTHORIZATION" as

--==============================================================================
-- Bibliotekarz
--==============================================================================

    FUNCTION is_librarian(
        p_user_id IN INT
    ) RETURN BOOLEAN;

end "AUTHORIZATION";
/
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
/
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
/
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
/
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
/
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
/
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
/






































































create or replace PROCEDURE GENERUJ_DOSTEPNOSC IS
    v_data DATE;
    v_istnieje NUMBER;
BEGIN
    -- Usuń wpisy sprzed dzisiaj
    DELETE FROM Dostepnosc
    WHERE Data < TRUNC(SYSDATE);

    -- Iteracja po wszystkich salach
    FOR sala IN (SELECT SalaID FROM Sala) LOOP
        FOR i IN 0..14 LOOP
            v_data := TRUNC(SYSDATE) + i;

            -- Pomiń soboty i niedziele
            IF TRIM(TO_CHAR(v_data, 'Day', 'NLS_DATE_LANGUAGE=POLISH')) NOT IN ('Sobota', 'Niedziela') THEN
                -- Sprawdź, czy wpis już istnieje dla sali
                SELECT COUNT(*) INTO v_istnieje
                FROM Dostepnosc
                WHERE SalaID = sala.SalaID AND Data = v_data;

                IF v_istnieje = 0 THEN
                    INSERT INTO Dostepnosc (Data, GodzinaOd, GodzinaDo, SalaID, WyposazenieID)
                    VALUES (
                        v_data,
                        8.00,
                        20.00,
                        sala.SalaID,
                        NULL
                    );
                END IF;
            END IF;
        END LOOP;
    END LOOP;

    -- Iteracja po całym wyposażeniu
    FOR wyposazenie IN (SELECT WyposazenieID FROM Wyposazenie) LOOP
        FOR i IN 0..14 LOOP
            v_data := TRUNC(SYSDATE) + i;

            -- Pomiń soboty i niedziele
            IF TRIM(TO_CHAR(v_data, 'Day', 'NLS_DATE_LANGUAGE=POLISH')) NOT IN ('Sobota', 'Niedziela') THEN
                -- Sprawdź, czy wpis już istnieje dla wyposażenia
                SELECT COUNT(*) INTO v_istnieje
                FROM Dostepnosc
                WHERE WyposazenieID = wyposazenie.WyposazenieID AND Data = v_data;

                IF v_istnieje = 0 THEN
                    INSERT INTO Dostepnosc (Data, GodzinaOd, GodzinaDo, SalaID, WyposazenieID)
                    VALUES (
                        v_data,
                        8.00,
                        20.00,
                        NULL,
                        wyposazenie.WyposazenieID
                    );
                END IF;
            END IF;
        END LOOP;
    END LOOP;

    COMMIT;
END GENERUJ_DOSTEPNOSC;
/
create or replace PROCEDURE Generuj_Kary IS
    v_kwota DECIMAL(10, 2) := 2;
    v_dni_opoznienia INT;
BEGIN
    -- Pętla przez wszystkie wypożyczenia, które są wypożyczone i nie zostały zwrócone
    FOR rec IN (
        SELECT W.WypozyczenieID, W.UzytkownikID, W.DataWypozyczenia
        FROM Wypozyczenie W
        WHERE W.Status = 'Wypożyczony' AND W.DataZwrotu IS NULL
    ) LOOP
        -- Sprawdzenie, czy minęło 14 dni od wypożyczenia
        v_dni_opoznienia := TRUNC(SYSDATE) - rec.DataWypozyczenia;

        -- Jeżeli termin przekroczony, nakłada karę
        IF v_dni_opoznienia > 14 THEN
            INSERT INTO Kara (Kwota, Powod, DataNalozenia, WypozyczenieID)
            VALUES (v_kwota, 'Przekroczono termin oddania książki', SYSDATE, rec.WypozyczenieID);
        END IF;
    END LOOP;

    -- Czy suma kar użytkownika przekroczyła 100zł
    FOR rec IN (
        SELECT W.UzytkownikID, SUM(K.Kwota) AS SumaKar
        FROM Kara K
        JOIN Wypozyczenie W ON K.WypozyczenieID = W.WypozyczenieID
        GROUP BY W.UzytkownikID
        HAVING SUM(K.Kwota) > 100
    ) LOOP
        -- Ustawienie statusu konta na 'Zablokowany' dla użytkowników, którzy przekroczyli 100zł kar
        UPDATE Uzytkownik
        SET StatusKonta = 'Zablokowany'
        WHERE UzytkownikID = rec.UzytkownikID;
    END LOOP;

    COMMIT;
END Generuj_Kary;
/













































   CREATE SEQUENCE  "DOSTEPNOSC_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 661 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "EGZEMPLARZ_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "KARA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "KOMUNIKAT_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "PUBLIKACJA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 201 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "RECENZJA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "REZERWACJA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "SALA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "SUGESTIA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "UZYTKOWNIK_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "WYDANIE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "WYPOSAZENIE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "WYPOZYCZENIE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;

   CREATE SEQUENCE  "ZAMOWIENIE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
























































create or replace trigger "DOSTEPNOSC_T"
before
insert on "DOSTEPNOSC"
for each row
begin
    :NEW.DOSTEPNOSCID := DOSTEPNOSC_SEQ.NEXTVAL;
end;
/
create or replace trigger "EGZEMPLARZ_T"
before
insert on "EGZEMPLARZ"
for each row
begin
    :NEW.EgzemplarzID := Egzemplarz_SEQ.NEXTVAL;
end;
/
create or replace trigger "KARA_T"
before
insert on "KARA"
for each row
begin
    :NEW.KARAID := KARA_SEQ.NEXTVAL;
end;
/
create or replace trigger "KOMUNIKAT_T"
before
insert on "KOMUNIKAT"
for each row
begin
    :NEW.KOMUNIKATID := KOMUNIKAT_SEQ.NEXTVAL;
    :NEW.DATAKOMUNIKATU := SYSDATE;
end;
/
create or replace trigger "PUBLIKACJA_T"
before
insert on "PUBLIKACJA"
for each row
begin
    :NEW.PublikacjaID := Publikacja_SEQ.NEXTVAL;
end;
/
create or replace trigger "RECENZJA_T"
before
insert on "RECENZJA"
for each row
begin
    :NEW.RECENZJAID := RECENZJA_SEQ.NEXTVAL;
end;
/
create or replace trigger "REZERWACJA_T"
before
insert on "REZERWACJA"
for each row
begin
    :NEW.REZERWACJAID := REZERWACJA_SEQ.NEXTVAL;
end;
/
create or replace trigger "SALA_T"
before
insert on "SALA"
for each row
begin
    :NEW.SALAID := SALA_SEQ.NEXTVAL;
end;
/
create or replace trigger "SUGESTIA_T"
before
insert on "SUGESTIA"
for each row
begin
    :NEW.SugestiaID := Sugestia_SEQ.NEXTVAL;
end;
/
create or replace trigger "UZYTKOWNIK_T"
before
insert on "UZYTKOWNIK"
for each row
begin
    :NEW.UzytkownikID := Uzytkownik_SEQ.NEXTVAL;
end;
/
create or replace trigger "WYDANIE_T"
before
insert on "WYDANIE"
for each row
begin
    :NEW.WydanieID := Wydanie_SEQ.NEXTVAL;
end;
/
create or replace trigger "WYPOSAZENIE_T"
before
insert on "WYPOSAZENIE"
for each row
begin
    :NEW.WYPOSAZENIEID := WYPOSAZENIE_SEQ.NEXTVAL;
end;
/
create or replace trigger "WYPOZYCZENIE_T"
before
insert on "WYPOZYCZENIE"
for each row
begin
    :NEW.WYPOZYCZENIEID := WYPOZYCZENIE_SEQ.NEXTVAL;
end;
/
create or replace trigger "ZAMOWIENIE_T"
before
insert on "ZAMOWIENIE"
for each row
begin
    :NEW.ZamowienieID := Zamowienie_SEQ.NEXTVAL;
end;
/


  CREATE OR REPLACE FORCE EDITIONABLE VIEW "KARTYPUBLIKACJI" ("PUBLIKACJAID", "TYTUL", "GATUNEK", "CYKL", "WYDANIEID", "TYPWYDANIA", "OKLADKA", "ROK", "AUTOR", "PODGATUNEK", "CZASTRWANIA", "PRODUKCJA", "ISBN", "WYDAWNICTWO", "LICZBASTRON", "OPIS", "OCENA") AS 
  SELECT
    p.PublikacjaID,
    p.Tytul,
    p.Gatunek,
    p.Cykl,
    w.WydanieID,
    w.TypWydania,
    w.Okladka,
    w.Rok,
    w.Autor,
    w.Podgatunek,
    w.CzasTrwania,
    w.Produkcja,
    w.ISBN,
    w.Wydawnictwo,
    w.LiczbaStron,
    w.Opis,
    NVL(ROUND(AVG(r.Ocena), 2), 0) || '★' AS Ocena
FROM
    Publikacja p
    JOIN Wydanie w ON p.PublikacjaID = w.PublikacjaID
    LEFT JOIN Recenzja r ON w.WydanieID = r.WydanieID
GROUP BY
    p.PublikacjaID,
    p.Tytul,
    p.Gatunek,
    p.Cykl,
    w.WydanieID,
    w.TypWydania,
    w.Okladka,
    w.Rok,
    w.Autor,
    w.Podgatunek,
    w.CzasTrwania,
    w.Produkcja,
    w.ISBN,
    w.Wydawnictwo,
    w.LiczbaStron,
    w.Opis;

  CREATE OR REPLACE EDITIONABLE TRIGGER "DOSTEPNOSC_T" 
before
insert on "DOSTEPNOSC"
for each row
begin
    :NEW.DOSTEPNOSCID := DOSTEPNOSC_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "DOSTEPNOSC_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "EGZEMPLARZ_T" 
before
insert on "EGZEMPLARZ"
for each row
begin
    :NEW.EgzemplarzID := Egzemplarz_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "EGZEMPLARZ_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "KARA_T" 
before
insert on "KARA"
for each row
begin
    :NEW.KARAID := KARA_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "KARA_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "KOMUNIKAT_T" 
before
insert on "KOMUNIKAT"
for each row
begin
    :NEW.KOMUNIKATID := KOMUNIKAT_SEQ.NEXTVAL;
    :NEW.DATAKOMUNIKATU := SYSDATE;
end;
/
ALTER TRIGGER "KOMUNIKAT_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "PUBLIKACJA_T" 
before
insert on "PUBLIKACJA"
for each row
begin
    :NEW.PublikacjaID := Publikacja_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "PUBLIKACJA_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "RECENZJA_T" 
before
insert on "RECENZJA"
for each row
begin
    :NEW.RECENZJAID := RECENZJA_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "RECENZJA_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "REZERWACJA_T" 
before
insert on "REZERWACJA"
for each row
begin
    :NEW.REZERWACJAID := REZERWACJA_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "REZERWACJA_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "SALA_T" 
before
insert on "SALA"
for each row
begin
    :NEW.SALAID := SALA_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "SALA_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "SUGESTIA_T" 
before
insert on "SUGESTIA"
for each row
begin
    :NEW.SugestiaID := Sugestia_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "SUGESTIA_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "UZYTKOWNIK_T" 
before
insert on "UZYTKOWNIK"
for each row
begin
    :NEW.UzytkownikID := Uzytkownik_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "UZYTKOWNIK_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "WYDANIE_T" 
before
insert on "WYDANIE"
for each row
begin
    :NEW.WydanieID := Wydanie_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "WYDANIE_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "WYPOSAZENIE_T" 
before
insert on "WYPOSAZENIE"
for each row
begin
    :NEW.WYPOSAZENIEID := WYPOSAZENIE_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "WYPOSAZENIE_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "WYPOZYCZENIE_T" 
before
insert on "WYPOZYCZENIE"
for each row
begin
    :NEW.WYPOZYCZENIEID := WYPOZYCZENIE_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "WYPOZYCZENIE_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "ZAMOWIENIE_T" 
before
insert on "ZAMOWIENIE"
for each row
begin
    :NEW.ZamowienieID := Zamowienie_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "ZAMOWIENIE_T" ENABLE;








































































  CREATE UNIQUE INDEX "SYS_C00159588" ON "DOSTEPNOSC" ("DOSTEPNOSCID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "DOSTEPNOSC_T" 
before
insert on "DOSTEPNOSC"
for each row
begin
    :NEW.DOSTEPNOSCID := DOSTEPNOSC_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "DOSTEPNOSC_T" ENABLE;

  CREATE UNIQUE INDEX "SYS_C00159888" ON "EGZEMPLARZ" ("EGZEMPLARZID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "EGZEMPLARZ_T" 
before
insert on "EGZEMPLARZ"
for each row
begin
    :NEW.EgzemplarzID := Egzemplarz_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "EGZEMPLARZ_T" ENABLE;

  CREATE UNIQUE INDEX "SYS_C00160612" ON "KARA" ("KARAID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "KARA_T" 
before
insert on "KARA"
for each row
begin
    :NEW.KARAID := KARA_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "KARA_T" ENABLE;

  CREATE UNIQUE INDEX "SYS_C00160619" ON "KOMUNIKAT" ("KOMUNIKATID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "KOMUNIKAT_T" 
before
insert on "KOMUNIKAT"
for each row
begin
    :NEW.KOMUNIKATID := KOMUNIKAT_SEQ.NEXTVAL;
    :NEW.DATAKOMUNIKATU := SYSDATE;
end;
/
ALTER TRIGGER "KOMUNIKAT_T" ENABLE;

  CREATE UNIQUE INDEX "SYS_C00140427" ON "PUBLIKACJA" ("PUBLIKACJAID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "PUBLIKACJA_T" 
before
insert on "PUBLIKACJA"
for each row
begin
    :NEW.PublikacjaID := Publikacja_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "PUBLIKACJA_T" ENABLE;

  CREATE UNIQUE INDEX "SYS_C00160027" ON "RECENZJA" ("RECENZJAID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "RECENZJA_T" 
before
insert on "RECENZJA"
for each row
begin
    :NEW.RECENZJAID := RECENZJA_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "RECENZJA_T" ENABLE;

  CREATE UNIQUE INDEX "SYS_C00159581" ON "REZERWACJA" ("REZERWACJAID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "REZERWACJA_T" 
before
insert on "REZERWACJA"
for each row
begin
    :NEW.REZERWACJAID := REZERWACJA_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "REZERWACJA_T" ENABLE;

  CREATE UNIQUE INDEX "SYS_C00159571" ON "SALA" ("SALAID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "SALA_T" 
before
insert on "SALA"
for each row
begin
    :NEW.SALAID := SALA_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "SALA_T" ENABLE;

  CREATE UNIQUE INDEX "SYS_C00159538" ON "SUGESTIA" ("SUGESTIAID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "SUGESTIA_T" 
before
insert on "SUGESTIA"
for each row
begin
    :NEW.SugestiaID := Sugestia_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "SUGESTIA_T" ENABLE;

  CREATE UNIQUE INDEX "SYS_C00140420" ON "UZYTKOWNIK" ("UZYTKOWNIKID") 
  ;
  CREATE UNIQUE INDEX "SYS_C00140421" ON "UZYTKOWNIK" ("EMAIL") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "UZYTKOWNIK_T" 
before
insert on "UZYTKOWNIK"
for each row
begin
    :NEW.UzytkownikID := Uzytkownik_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "UZYTKOWNIK_T" ENABLE;

  CREATE UNIQUE INDEX "SYS_C00159884" ON "WYDANIE" ("WYDANIEID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "WYDANIE_T" 
before
insert on "WYDANIE"
for each row
begin
    :NEW.WydanieID := Wydanie_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "WYDANIE_T" ENABLE;

  CREATE UNIQUE INDEX "SYS_C00159576" ON "WYPOSAZENIE" ("WYPOSAZENIEID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "WYPOSAZENIE_T" 
before
insert on "WYPOSAZENIE"
for each row
begin
    :NEW.WYPOSAZENIEID := WYPOSAZENIE_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "WYPOSAZENIE_T" ENABLE;

  CREATE UNIQUE INDEX "SYS_C00160605" ON "WYPOZYCZENIE" ("WYPOZYCZENIEID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "WYPOZYCZENIE_T" 
before
insert on "WYPOZYCZENIE"
for each row
begin
    :NEW.WYPOZYCZENIEID := WYPOZYCZENIE_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "WYPOZYCZENIE_T" ENABLE;

  CREATE UNIQUE INDEX "SYS_C00159543" ON "ZAMOWIENIE" ("ZAMOWIENIEID") 
  ;

  CREATE OR REPLACE EDITIONABLE TRIGGER "ZAMOWIENIE_T" 
before
insert on "ZAMOWIENIE"
for each row
begin
    :NEW.ZamowienieID := Zamowienie_SEQ.NEXTVAL;
end;
/
ALTER TRIGGER "ZAMOWIENIE_T" ENABLE;
















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
                ELSE 'https://i.pinimg.com/736x/9d/8b/b0/9d8bb0df052f1cedc767c5c2d3d45ad6.jpg'
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
/
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
/
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
/
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
/
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
/
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
/
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
/
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
/



















































































































