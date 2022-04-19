SET SERVEROUTPUT ON
DECLARE
v_num INTEGER;
BEGIN
v_num := &dime_numero;
dbms_output.put_line('El factorial de '||v_num|| ' es '||factorial(v_num));
END;