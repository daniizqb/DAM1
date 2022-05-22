-- Ej5
-- Daniel Izquierdo Bonilla
CREATE OR REPLACE PROCEDURE LISTA_EMPLEADOS(ciudad LOCATIONS.CITY%TYPE) IS
BEGIN
    FOR registro IN (SELECT DEPARTMENTS.DEPARTMENT_NAME AS nom, COUNT(EMPLOYEES.EMPLOYEE_ID) AS emp
         FROM DEPARTMENTS
                  LEFT JOIN EMPLOYEES ON DEPARTMENTS.DEPARTMENT_ID = EMPLOYEES.DEPARTMENT_ID
                  JOIN LOCATIONS ON DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID
         WHERE LOCATIONS.CITY = ciudad
         GROUP BY DEPARTMENTS.DEPARTMENT_NAME)
        LOOP
            DBMS_OUTPUT.PUT_LINE('Departamento: ' || registro.nom || ' - Empleados: ' || registro.emp);
        END LOOP;
END LISTA_EMPLEADOS;