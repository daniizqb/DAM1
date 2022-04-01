-- Daniel Izquierdo Bonilla
-- Ej11
SET SERVEROUTPUT ON
DECLARE
v_idregion countries.region_id%type;
ape employees.last_name%type;
hd employees.hire_date%type;
marca VARCHAR2(2);

CURSOR c_emp is select last_name,hire_date from employees order by hire_date fetch next 3 rows only;
registro c_emp%rowtype;

BEGIN
OPEN c_emp;
marca := '';

LOOP
    FETCH c_emp into ape,hd;
    EXIT WHEN c_emp%notfound;  
    if (ape = 'Baer') then
        marca := '=>';
    end if;
    DBMS_OUTPUT.PUT_LINE('Apellido: '||marca||ape||' Hire Date: '||hd);
    marca := '';
END LOOP;

CLOSE c_emp;
END;