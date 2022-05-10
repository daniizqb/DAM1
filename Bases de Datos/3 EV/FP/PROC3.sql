create or replace PROCEDURE PROC3(lista in out VARCHAR2)
    IS
    contador INTEGER;
    hora     VARCHAR2(50);
BEGIN
    contador := 1;
    LOOP
        SELECT TO_CHAR
                   (SYSDATE, 'YYYY-MM-DD HH24:SS')
        into hora
        FROM DUAL;
        dbMS_OUTPUT.PUT_LINE(GET_NTH(lista,'#',contador));
        contador := contador + 1;
        EXIT WHEN contador = LIST_SIZE(lista);
    END LOOP;
END;