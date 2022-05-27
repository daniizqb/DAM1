-- Ej2
-- Daniel Izquierdo Bonilla
set serveroutput on
DECLARE
    idEmp   EMPLOYEES.EMPLOYEE_ID%type;
    nom     EMPLOYEES.FIRST_NAME%type;
    ape     EMPLOYEES.LAST_NAME%type;
    salario EMPLOYEES.SALARY%type;
    idDep   EMPLOYEES.DEPARTMENT_ID%type;
    cuenta  INTEGER;

    no_deparment EXCEPTION;
    no_boss EXCEPTION;
BEGIN
    idEmp := &dime_id;

    SELECT COUNT(DEPARTMENT_ID) AS cue INTO cuenta FROM EMPLOYEES WHERE EMPLOYEE_ID = idEmp;

    if cuenta = 0 then
        raise no_deparment;
    end if;

    SELECT COUNT(MANAGER_ID) AS cue INTO cuenta FROM EMPLOYEES WHERE EMPLOYEE_ID = idEmp;

    if cuenta = 0 then
        raise no_boss;
    end if;

    SELECT FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT_ID
    INTO nom, ape, salario, idDep
    FROM EMPLOYEES
    WHERE EMPLOYEE_ID = idEmp;

    DBMS_OUTPUT.PUT_LINE('Nombre: ' || nom || ' | Apellido: ' || ape || ' | Salario: ' || salario ||
                         ' | ID del Departamento: ' || idDep);

EXCEPTION
    when NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('Empleado no econtrado');
    when no_deparment then DBMS_OUTPUT.PUT_LINE('El empleado con la ID introducida no tiene departamento');
    when no_boss then dbms_output.put_line('El empleado con la ID introducida no tiene manager');
    when others then dbms_output.put_line('Error inesperado');
end;