-- Daniel Izquierdo Bonilla
-- Ej17
SET SERVEROUTPUT ON
DECLARE
salario employees.salary%type;
did employees.department_id%type;

--CURSOR c_emp () is select salary from employees
--where department_id = did;
--registro jobs%rowtype;

BEGIN

salario := &salario;
did := &id_departamento;

UPDATE employees SET salary = salary + salario where department_id = did;
DBMS_OUTPUT.PUT_LINE('Se han modificado '||SQL%ROWCOUNT||' filas');

END;