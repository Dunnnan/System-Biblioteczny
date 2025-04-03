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

