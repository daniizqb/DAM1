SET SERVEROUTPUT ON

CREATE OR REPLACE FUNCTION factorial (v_num positive)
RETURN INTEGER
IS
BEGIN
    if v_num = 1 then
        RETURN 1;
    end if;    
RETURN v_num*factorial(v_num-1);    
END factorial;