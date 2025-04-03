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

