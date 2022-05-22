-- Ej1
-- Daniel Izquierdo Bonilla
set serveroutput on
declare
    ciudad LOCATIONS.CITY%type;
    cuenta INTEGER;
begin
    select city, count(EMPLOYEE_ID) as num_emp into ciudad,cuenta
    from LOCATIONS
             join DEPARTMENTS on LOCATIONS.LOCATION_ID = DEPARTMENTS.LOCATION_ID
             join EMPLOYEES on DEPARTMENTS.DEPARTMENT_ID = EMPLOYEES.DEPARTMENT_ID
    group by city
    order by num_emp desc fetch first 1 rows only;


    dbms_output.put_line('Ciudad: ' || ciudad || ' | Empleados: '||cuenta);
end;