-- Ej2
-- Daniel Izquierdo Bonilla
set serveroutput on
declare
    idPedido employees.department_id%type;
    cuenta   integer;
    nomDep   departments.department_name%type;
    nom   employees.first_name%type;
    numDep exception;
begin
    idPedido := &dime_id_pedido;

    select count(*) into cuenta from departments where department_id = idPedido;

    if cuenta is null or cuenta = 0
    then
        raise numDep;
    end if;

    select count(*) into cuenta from employees where department_id = idPedido;

    if cuenta is null or cuenta = 0
    then
        dbms_output.put_line('El departamento no tiene empleados');
    end if;

    select employees.first_name, departments.department_name
    into nom, nomDep
    from employees
             join departments on departments.department_id = employees.department_id
    where employees.employee_id = (select manager_id from departments where departments.department_id = idPedido);

    dbms_output.put_line('Departamento: ' || nomDep || ' Manager: ' || nom || ' Nº empleados: ' || cuenta);

exception
    when numDep then dbms_output.put_line('No existe empleado con la ID introducida');
    when others then dbms_output.put_line('Error inesperado');
end;