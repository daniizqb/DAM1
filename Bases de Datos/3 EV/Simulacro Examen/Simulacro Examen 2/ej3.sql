-- Ej3
-- Daniel Izquierdo Bonilla
set serveroutput on
declare
    pais      COUNTRIES.COUNTRY_NAME%type;
    nomDep    DEPARTMENTS.DEPARTMENT_NAME%type;
    ciudad    LOCATIONS.CITY%type;
    codPostal LOCATIONS.POSTAL_CODE%type;
    cursor c_ej is select DEPARTMENTS.DEPARTMENT_NAME, LOCATIONS.CITY, LOCATIONS.POSTAL_CODE
                   from DEPARTMENTS
                            left join LOCATIONS on DEPARTMENTS.LOCATION_ID = LOCATIONS.LOCATION_ID
                            left join COUNTRIES on LOCATIONS.COUNTRY_ID = COUNTRIES.COUNTRY_ID
                   where COUNTRY_NAME = pais;
begin
    pais := '&dime_pais';

    open c_ej;
    fetch c_ej into nomDep, ciudad, codPostal;
    while c_ej%found
        loop
            dbms_output.put_line('Departamento: ' || nomDep || ' Ciudad: ' || ciudad || ' Codigo Postal: ' || codPostal);
            fetch c_ej into nomDep, ciudad, codPostal;
        end loop;
    close c_ej;
end;