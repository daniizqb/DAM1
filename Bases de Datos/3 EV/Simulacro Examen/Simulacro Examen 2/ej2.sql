-- Ej2
-- Daniel Izquierdo Bonilla
set serveroutput on
declare
    idEmp   employees.EMPLOYEE_ID%type;
    cuenta  integer;
    ape     EMPLOYEES.LAST_NAME%type;
    nom     employees.first_name%type;
    salario EMPLOYEES.salary%type;
    dep     DEPARTMENTS.DEPARTMENT_NAME%type;
    numDep exception;
    salary10000 exception;
begin
    idEmp := &dime_id_empleado;

    select SALARY into cuenta from employees where EMPLOYEE_ID = idEmp;

    if cuenta > 10000
    then
        raise salary10000;
    end if;

    select count(DEPARTMENT_ID) into cuenta from EMPLOYEES where EMPLOYEE_ID = idEmp;

    if cuenta = 0
    then
        raise numDep;
    end if;

    select employees.first_name, LAST_NAME, SALARY, DEPARTMENT_NAME
    into nom, ape, salario, dep
    from employees
             join DEPARTMENTS on DEPARTMENTS.DEPARTMENT_ID = EMPLOYEES.DEPARTMENT_ID
    where EMPLOYEE_ID = idEmp;


    dbms_output.put_line('Nombre: ' || nom || ' Apellido: ' || ape || ' Salario: ' || salario || ' Departamento: ' ||
                         dep);

exception
    when NO_DATA_FOUND then DBMS_OUTPUT.PUT_LINE('Empleado no econtrado');
    when salary10000 then DBMS_OUTPUT.PUT_LINE('El salario del empleado con ID introducida es superior a 10000');
    when numDep then dbms_output.put_line('El empleado con la ID introducida no tiene departamento');
    when others then dbms_output.put_line('Error inesperado');
end;