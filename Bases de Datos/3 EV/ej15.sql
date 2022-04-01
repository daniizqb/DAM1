-- Daniel Izquierdo Bonilla
-- Ej15
SET SERVEROUTPUT ON
DECLARE
ape employees.last_name%type;
salario employees.salary%type;

CURSOR c_emp is select last_name,salary from employees order by salary asc fetch next 2 rows only;

BEGIN

OPEN c_emp;

LOOP
    FETCH c_emp into ape,salario;
    EXIT WHEN c_emp%notfound;
    DBMS_OUTPUT.PUT_LINE('Apellido: '||ape||' Salario: '||salario);
END LOOP;

CLOSE c_emp;
END;