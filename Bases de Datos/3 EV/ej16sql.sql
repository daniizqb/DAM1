-- Daniel Izquierdo Bonilla
-- Ej16
SET SERVEROUTPUT ON
DECLARE
ape employees.last_name%type;
salario employees.salary%type;

CURSOR c_emp (jid jobs.job_id%type) is select last_name,salary from employees where job_id = jid order by salary desc fetch next 2 rows only;
registro jobs%rowtype;

BEGIN

FOR registro IN 
(SELECT job_title, job_id from jobs)
LOOP
    OPEN c_emp(registro.job_id);
    DBMS_OUTPUT.PUT_LINE('Oficio: '||registro.job_title);
    
    FETCH c_emp into ape,salario;
    WHILE c_emp%found
    LOOP
        DBMS_OUTPUT.PUT_LINE('Apellido: '||ape||' Salario: '||salario);
        FETCH c_emp into ape,salario;
    END LOOP;
    CLOSE c_emp;
END LOOP;

END;