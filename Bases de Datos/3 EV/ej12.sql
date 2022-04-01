-- Daniel Izquierdo Bonilla
-- Ej12
SET SERVEROUTPUT ON
DECLARE
v_idregion countries.region_id%type;
ape employees.last_name%type;
hd employees.hire_date%type;

CURSOR c_emp is select last_name,hire_date from employees order by last_name;
registro c_emp%rowtype;

BEGIN
OPEN c_emp;

LOOP
    FETCH c_emp into ape,hd;
    EXIT WHEN c_emp%notfound;  
    DBMS_OUTPUT.PUT_LINE('Apellido: '||ape||' Hire Date: '||hd);
END LOOP;

CLOSE c_emp;
END;