-- Daniel Izquierdo Bonilla
-- Ej13
SET SERVEROUTPUT ON
DECLARE
v_idregion countries.region_id%type;
ape employees.last_name%type;
hd employees.hire_date%type;
cuenta NUMBER(8,2);

registro employees%rowtype;

BEGIN

FOR registro IN 
(select department_id,department_name from departments)
LOOP
    select count(*) into cuenta from employees where department_id = registro.department_id;
    DBMS_OUTPUT.PUT_LINE('Departamento: '||registro.department_name||' | Numero de empleados: '||cuenta);
END LOOP;

END;