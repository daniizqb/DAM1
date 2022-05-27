-- Ej5
-- Daniel Izquierdo Bonilla
CREATE OR REPLACE PROCEDURE LISTA_SEDES(paiS COUNTRIES.COUNTRY_NAME%TYPE) IS
BEGIN
    FOR registro IN (SELECT LOCATIONS.STREET_ADDRESS as direc, COUNT(DEPARTMENT_ID) AS dep
                     FROM DEPARTMENTS
                              Right Join LOCATIONS ON DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID
                              JOIN COUNTRIES on COUNTRIES.COUNTRY_ID = LOCATIONS.COUNTRY_ID
                     WHERE COUNTRIES.COUNTRY_NAME = pais
                     GROUP BY LOCATIONS.STREET_ADDRESS)
        LOOP
            DBMS_OUTPUT.PUT_LINE('Direccion: ' || registro.direc || ' | Departamentos: ' || registro.dep);
        END LOOP;
END LISTA_SEDES;