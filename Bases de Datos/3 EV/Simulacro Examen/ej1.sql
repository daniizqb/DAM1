-- Ej1
-- Daniel Izquierdo Bonilla
set serveroutput on
declare
    ape employees.last_name%type;
begin
    select last_name into ape from employees order by hire_date fetch first 1 rows only;

    dbms_output.put_line('Apellido: ' || ape);
end;