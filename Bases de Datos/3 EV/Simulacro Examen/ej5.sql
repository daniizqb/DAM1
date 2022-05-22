-- Ej5
-- Daniel Izquierdo Bonilla
create or replace procedure LISTA_EMPLEADOS(ciudad locations.city%type)
    is
    ciudad2 locations.city%type;
    numEmp  integer;
    nom     employees.first_name%type;
    cursor c_ej is select DEPARTMENTS.DEPARTMENT_NAME, count(EMPLOYEES.FIRST_NAME) as empleados
                   from DEPARTMENTS
                            left join EMPLOYEES on DEPARTMENTS.department_id = departments.department_id
                            join locations on departments.location_id = locations.location_id
                   where city = 'Oxford'
                   group by DEPARTMENT_NAME;
begin
    open c_ej;
    fetch c_ej into nom, numEmp;
    while c_ej%found
        loop
            dbms_output.put_line('Nombre: ' || nom || ' Empleados: ' || numEmp);
            fetch c_ej into nom, numEmp;
        end loop;
    close c_ej;
end;