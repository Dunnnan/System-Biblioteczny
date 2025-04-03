create or replace trigger "DOSTEPNOSC_T"
before
insert on "DOSTEPNOSC"
for each row
begin
    :NEW.DOSTEPNOSCID := DOSTEPNOSC_SEQ.NEXTVAL;
end;


create or replace trigger "EGZEMPLARZ_T"
before
insert on "EGZEMPLARZ"
for each row
begin
    :NEW.EgzemplarzID := Egzemplarz_SEQ.NEXTVAL;
end;


create or replace trigger "KARA_T"
before
insert on "KARA"
for each row
begin
    :NEW.KARAID := KARA_SEQ.NEXTVAL;
end;


create or replace trigger "KOMUNIKAT_T"
before
insert on "KOMUNIKAT"
for each row
begin
    :NEW.KOMUNIKATID := KOMUNIKAT_SEQ.NEXTVAL;
    :NEW.DATAKOMUNIKATU := SYSDATE;
end;


create or replace trigger "PUBLIKACJA_T"
before
insert on "PUBLIKACJA"
for each row
begin
    :NEW.PublikacjaID := Publikacja_SEQ.NEXTVAL;
end;


create or replace trigger "RECENZJA_T"
before
insert on "RECENZJA"
for each row
begin
    :NEW.RECENZJAID := RECENZJA_SEQ.NEXTVAL;
end;


create or replace trigger "REZERWACJA_T"
before
insert on "REZERWACJA"
for each row
begin
    :NEW.REZERWACJAID := REZERWACJA_SEQ.NEXTVAL;
end;


create or replace trigger "SALA_T"
before
insert on "SALA"
for each row
begin
    :NEW.SALAID := SALA_SEQ.NEXTVAL;
end;


create or replace trigger "SUGESTIA_T"
before
insert on "SUGESTIA"
for each row
begin
    :NEW.SugestiaID := Sugestia_SEQ.NEXTVAL;
end;


create or replace trigger "UZYTKOWNIK_T"
before
insert on "UZYTKOWNIK"
for each row
begin
    :NEW.UzytkownikID := Uzytkownik_SEQ.NEXTVAL;
end;


create or replace trigger "WYDANIE_T"
before
insert on "WYDANIE"
for each row
begin
    :NEW.WydanieID := Wydanie_SEQ.NEXTVAL;
end;


create or replace trigger "WYPOSAZENIE_T"
before
insert on "WYPOSAZENIE"
for each row
begin
    :NEW.WYPOSAZENIEID := WYPOSAZENIE_SEQ.NEXTVAL;
end;


create or replace trigger "WYPOZYCZENIE_T"
before
insert on "WYPOZYCZENIE"
for each row
begin
    :NEW.WYPOZYCZENIEID := WYPOZYCZENIE_SEQ.NEXTVAL;
end;


create or replace trigger "ZAMOWIENIE_T"
before
insert on "ZAMOWIENIE"
for each row
begin
    :NEW.ZamowienieID := Zamowienie_SEQ.NEXTVAL;
end;



  CREATE OR REPLACE EDITIONABLE TRIGGER "DOSTEPNOSC_T" 
before
insert on "DOSTEPNOSC"
for each row
begin
    :NEW.DOSTEPNOSCID := DOSTEPNOSC_SEQ.NEXTVAL;
end;


ALTER TRIGGER "DOSTEPNOSC_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "EGZEMPLARZ_T" 
before
insert on "EGZEMPLARZ"
for each row
begin
    :NEW.EgzemplarzID := Egzemplarz_SEQ.NEXTVAL;
end;


ALTER TRIGGER "EGZEMPLARZ_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "KARA_T" 
before
insert on "KARA"
for each row
begin
    :NEW.KARAID := KARA_SEQ.NEXTVAL;
end;


ALTER TRIGGER "KARA_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "KOMUNIKAT_T" 
before
insert on "KOMUNIKAT"
for each row
begin
    :NEW.KOMUNIKATID := KOMUNIKAT_SEQ.NEXTVAL;
    :NEW.DATAKOMUNIKATU := SYSDATE;
end;


ALTER TRIGGER "KOMUNIKAT_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "PUBLIKACJA_T" 
before
insert on "PUBLIKACJA"
for each row
begin
    :NEW.PublikacjaID := Publikacja_SEQ.NEXTVAL;
end;


ALTER TRIGGER "PUBLIKACJA_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "RECENZJA_T" 
before
insert on "RECENZJA"
for each row
begin
    :NEW.RECENZJAID := RECENZJA_SEQ.NEXTVAL;
end;


ALTER TRIGGER "RECENZJA_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "REZERWACJA_T" 
before
insert on "REZERWACJA"
for each row
begin
    :NEW.REZERWACJAID := REZERWACJA_SEQ.NEXTVAL;
end;


ALTER TRIGGER "REZERWACJA_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "SALA_T" 
before
insert on "SALA"
for each row
begin
    :NEW.SALAID := SALA_SEQ.NEXTVAL;
end;


ALTER TRIGGER "SALA_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "SUGESTIA_T" 
before
insert on "SUGESTIA"
for each row
begin
    :NEW.SugestiaID := Sugestia_SEQ.NEXTVAL;
end;


ALTER TRIGGER "SUGESTIA_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "UZYTKOWNIK_T" 
before
insert on "UZYTKOWNIK"
for each row
begin
    :NEW.UzytkownikID := Uzytkownik_SEQ.NEXTVAL;
end;


ALTER TRIGGER "UZYTKOWNIK_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "WYDANIE_T" 
before
insert on "WYDANIE"
for each row
begin
    :NEW.WydanieID := Wydanie_SEQ.NEXTVAL;
end;


ALTER TRIGGER "WYDANIE_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "WYPOSAZENIE_T" 
before
insert on "WYPOSAZENIE"
for each row
begin
    :NEW.WYPOSAZENIEID := WYPOSAZENIE_SEQ.NEXTVAL;
end;


ALTER TRIGGER "WYPOSAZENIE_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "WYPOZYCZENIE_T" 
before
insert on "WYPOZYCZENIE"
for each row
begin
    :NEW.WYPOZYCZENIEID := WYPOZYCZENIE_SEQ.NEXTVAL;
end;


ALTER TRIGGER "WYPOZYCZENIE_T" ENABLE;

  CREATE OR REPLACE EDITIONABLE TRIGGER "ZAMOWIENIE_T" 
before
insert on "ZAMOWIENIE"
for each row
begin
    :NEW.ZamowienieID := Zamowienie_SEQ.NEXTVAL;
end;


ALTER TRIGGER "ZAMOWIENIE_T" ENABLE;