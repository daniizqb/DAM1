-- Daniel Izquierdo Bonilla
-- Ej14
SET SERVEROUTPUT ON
DECLARE
ape employees.last_name%type;
eid employees.employee_id%type;
str employees.last_name%type;

CURSOR c_emp is select last_name,employee_id from employees where last_name like '%'||str||'%';

BEGIN
str := '&introduce_cadena';

OPEN c_emp;

LOOP
    FETCH c_emp into ape,eid;
    EXIT WHEN c_emp%notfound;
    DBMS_OUTPUT.PUT_LINE('Apellido: '||ape||' Id empleado: '||eid);
END LOOP;

DBMS_OUTPUT.PUT_LINE('Hay '||c_emp%rowcount||' empleados');

CLOSE c_emp;
END;