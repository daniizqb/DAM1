-- Ej7
-- Daniel Izquierdo Bonilla
CREATE OR REPLACE PROCEDURE CADENA_JEFES(idEmp EMPLOYEES.EMPLOYEE_ID%TYPE) IS
    nom    EMPLOYEES.FIRST_NAME%type;
    ape    EMPLOYEES.LAST_NAME%type;
    man    EMPLOYEES.MANAGER_ID%type;
    auxNom EMPLOYEES.FIRST_NAME%type;
    auxApe EMPLOYEES.LAST_NAME%type;
BEGIN
    SELECT FIRST_NAME, LAST_NAME, MANAGER_ID
    INTO nom,ape,man
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = idEmp;


    if man is null then
        DBMS_OUTPUT.PUT_LINE(nom || ' ' || ape || ' es el CEO');
    elsif man is not null then
        SELECT FIRST_NAME, LAST_NAME
        INTO auxNom,auxApe
        FROM EMPLOYEES
        WHERE EMPLOYEE_ID = man;
        DBMS_OUTPUT.PUT_LINE(nom || ' ' || ape || ' tiene como jefe a ' || auxNom || ' ' || auxApe);
        CADENA_JEFES(man);
    end if;

END CADENA_JEFES;