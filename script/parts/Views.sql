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
