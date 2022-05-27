-- Ej1
-- Daniel Izquierdo Bonilla
set serveroutput on
DECLARE
    cuenta INTEGER;
    pais   COUNTRIES.COUNTRY_NAME%type;
BEGIN
    SELECT COUNTRIES.COUNTRY_NAME, COUNT(DEPARTMENT_ID) AS NUM_DEPARTAMENTOS
    INTO pais,cuenta
    FROM COUNTRIES
             JOIN LOCATIONS on COUNTRIES.COUNTRY_ID = LOCATIONS.COUNTRY_ID
             JOIN DEPARTMENTS on LOCATIONS.LOCATION_ID = DEPARTMENTS.LOCATION_ID
    group by COUNTRIES.COUNTRY_NAME
    order by NUM_DEPARTAMENTOS desc fetch first 1 rows only;

    DBMS_OUTPUT.PUT_LINE('Pais: ' || pais || ' | Numero de Departamentos: ' || cuenta);
end;