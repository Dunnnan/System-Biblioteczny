CREATE TABLE Uzytkownik (
    UzytkownikID NUMBER PRIMARY KEY,
    Imie VARCHAR2(255) NOT NULL,
    Nazwisko VARCHAR2(255) NOT NULL,
    Email VARCHAR2(255) UNIQUE NOT NULL,
    Haslo VARCHAR2(255) NOT NULL,
    DataRejestracji DATE NOT NULL,
    StatusKonta VARCHAR2(50) NOT NULL,
    Zdjecie VARCHAR2(255) NOT NULL
);

CREATE TABLE Publikacja (
    PublikacjaID NUMBER PRIMARY KEY,
    Tytul VARCHAR2(255) NOT NULL,
    Gatunek VARCHAR2(100) NOT NULL,
    Cykl VARCHAR2(255) NULL
);


CREATE TABLE Wydanie (
    WydanieID NUMBER PRIMARY KEY,
    TypWydania VARCHAR2(50) NOT NULL,
    Okladka VARCHAR2(255) NOT NULL,
    Rok NUMBER NOT NULL,
    Autor VARCHAR2(255) NOT NULL,
    Podgatunek VARCHAR2(50) NULL,

    -- Pola specyficzne dla filmów
    CzasTrwania NUMBER NULL,
    Produkcja VARCHAR2(255) NULL,

    -- Pola specyficzne dla książek
    ISBN VARCHAR2(13) NULL,
    Wydawnictwo VARCHAR2(255) NULL,
    LiczbaStron NUMBER NULL,

    PublikacjaID NUMBER NOT NULL,
    FOREIGN KEY (PublikacjaID) REFERENCES Publikacja(PublikacjaID) ON DELETE CASCADE
);

CREATE TABLE Egzemplarz (
    EgzemplarzID NUMBER PRIMARY KEY,
    Status VARCHAR2(50) NOT NULL,
    WydanieID NUMBER NOT NULL,
    FOREIGN KEY (WydanieID) REFERENCES Wydanie(WydanieID) ON DELETE CASCADE
);

CREATE TABLE Wypozyczenie (
    WypozyczenieID NUMBER PRIMARY KEY,
    DataWypozyczenia DATE NOT NULL,
    DataZwrotu DATE NULL,
    MaksymalnaDataZwrotu DATE NOT NULL,
    Status VARCHAR2(50) NOT NULL,
    EgzemplarzID NUMBER NOT NULL,
    UzytkownikID NUMBER NOT NULL,
    FOREIGN KEY (EgzemplarzID) REFERENCES Egzemplarz(EgzemplarzID) ON DELETE CASCADE,
    FOREIGN KEY (UzytkownikID) REFERENCES Uzytkownik(UzytkownikID)
);

CREATE TABLE Kara (
    KaraID NUMBER PRIMARY KEY,
    Kwota DECIMAL(10, 2) NOT NULL,
    Powod VARCHAR2(255) NOT NULL,
    DataNalozenia DATE NOT NULL,
    WypozyczenieID NUMBER NOT NULL,
    FOREIGN KEY (WypozyczenieID) REFERENCES Wypozyczenie(WypozyczenieID) ON DELETE CASCADE 
);

CREATE TABLE Recenzja (
    RecenzjaID NUMBER PRIMARY KEY,
    Ocena NUMBER CHECK (Ocena BETWEEN 1 AND 10),
    Komentarz VARCHAR2(1024) NOT NULL,
    DataRecenzji DATE NOT NULL,
    WydanieID NUMBER NOT NULL,
    UzytkownikID NUMBER NOT NULL,
    FOREIGN KEY (WydanieID) REFERENCES Wydanie(WydanieID) ON DELETE CASCADE,
    FOREIGN KEY (UzytkownikID) REFERENCES Uzytkownik(UzytkownikID)
);

CREATE TABLE Sugestia (
    SugestiaID NUMBER PRIMARY KEY,
    TytulPropozycji VARCHAR2(255) NOT NULL,
    AutorPropozycji VARCHAR2(255) NOT NULL,
    GatunekPropozycji VARCHAR2(100) NOT NULL,
    RokWydania NUMBER NOT NULL,
    TypPublikacji VARCHAR2(100) NOT NULL,
    Argumentacja VARCHAR2(1024) NULL,
    DataSugestii DATE NOT NULL,
    UzytkownikID NUMBER NOT NULL,
    FOREIGN KEY (UzytkownikID) REFERENCES Uzytkownik(UzytkownikID)
);

CREATE TABLE Komunikat (
    KomunikatID NUMBER PRIMARY KEY,
    Tytul VARCHAR2(255) NOT NULL,
    Tresc VARCHAR2(1024) NOT NULL,
    Zdjecie VARCHAR2(255) NULL,
    DataKomunikatu DATE NOT NULL,
    UzytkownikID NUMBER NOT NULL,
    FOREIGN KEY (UzytkownikID) REFERENCES Uzytkownik(UzytkownikID)
);

CREATE TABLE Dostepnosc (
    DostepnoscID NUMBER PRIMARY KEY,
    Data DATE NOT NULL,
    GodzinaOd DATE NOT NULL,
    GodzinaDo DATE NOT NULL,
    SalaID NUMBER NULL,
    WyposazenieID NUMBER NULL,
    FOREIGN KEY (SalaID) REFERENCES Sala(SalaID) ON DELETE CASCADE,
    FOREIGN KEY (WyposazenieID) REFERENCES Wyposazenie(WyposazenieID)
);

CREATE TABLE Sala (
    SalaID NUMBER PRIMARY KEY,
    Nazwa VARCHAR2(255) NOT NULL,
    Opis VARCHAR2(1024) NOT NULL,
    MaksymalnaPojemnosc NUMBER NOT NULL,
    Zdjecie VARCHAR2(255) NOT NULL
);

CREATE TABLE Wyposazenie (
    WyposazenieID NUMBER PRIMARY KEY,
    Nazwa VARCHAR2(255) NOT NULL,
    Opis VARCHAR2(1024) NOT NULL,
    Typ VARCHAR2(255) NOT NULL,
    Zdjecie VARCHAR2(255) NOT NULL
);

CREATE TABLE Rezerwacja (
    RezerwacjaID NUMBER PRIMARY KEY,
    DataRezerwacji DATE NOT NULL,
    GodzinaOd DATE NOT NULL,
    GodzinaDo DATE NOT NULL,
    UzytkownikID NUMBER NOT NULL,
    SalaID NUMBER NULL,
    WyposazenieID NUMBER NULL,
    FOREIGN KEY (SalaID) REFERENCES Sala(SalaID) ON DELETE CASCADE,
    FOREIGN KEY (WyposazenieID) REFERENCES Wyposazenie(WyposazenieID) ON DELETE CASCADE,
    FOREIGN KEY (UzytkownikID) REFERENCES Uzytkownik(UzytkownikID)
);

CREATE TABLE Zamowienie (
    ZamowienieID NUMBER PRIMARY KEY,
    DataDodania DATE NOT NULL,
    Status VARCHAR2(50) NOT NULL,
    SugestiaID NUMBER NOT NULL,
    FOREIGN KEY (SugestiaID) REFERENCES Sugestia(SugestiaID)
);
