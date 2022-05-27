-- Ej3
-- Daniel Izquierdo Bonilla
set serveroutput on
declare
    ciudadUser LOCATIONS.CITY%type;
    ciudad     LOCATIONS.CITY%type;
    nom        EMPLOYEES.FIRST_NAME%type;
    ape        EMPLOYEES.LAST_NAME%type;
    dep        DEPARTMENTS.DEPARTMENT_NAME%type;
    cursor c_ej is select EMPLOYEES.FIRST_NAME, LOCATIONS.CITY, EMPLOYEES.LAST_NAME, DEPARTMENT_NAME
                   from EMPLOYEES
                            join DEPARTMENTS on EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID
                            join LOCATIONS on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID
                   where CITY = ciudadUser and EMPLOYEE_ID = DEPARTMENTS.MANAGER_ID;
begin
    ciudadUser := '&dime_ciudad';

    open c_ej;
    fetch c_ej into nom, ciudad, ape, dep;
    while c_ej%found
        loop
            dbms_output.put_line('Nombre: ' || nom || ' | Ciudad: ' || ciudad || ' | Apellido: ' ||
                                 ape || ' | Departamento: '|| dep);
            fetch c_ej into nom, ciudad, ape, dep;
        end loop;
    close c_ej;
end;