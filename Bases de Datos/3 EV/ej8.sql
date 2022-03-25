-- Daniel Izquierdo Bonilla
-- Ej 8-9
SET SERVEROUTPUT ON
DECLARE
    v_id employees.employee_id%TYPE;
    v_ape employees.last_name%TYPE;
    v_nom employees.first_name%TYPE;
    v_mail employees.email%TYPE;
    v_hd employees.hire_date%TYPE;
    v_job employees.job_id%TYPE;
    v_sueldo employees.salary%TYPE;
    v_manag employees.manager_id%TYPE;
    v_dep employees.department_id%TYPE;
    cuenta INTEGER;
    cuenta2 INTEGER;
    cuenta3 INTEGER;
    average INTEGER;
    
    no_dep EXCEPTION;
    no_manag EXCEPTION;
    empnum_dup EXCEPTION;
    contiene_espacio EXCEPTION;
    invalid_mail EXCEPTION;
    invalid_date EXCEPTION;
    invalid_salary EXCEPTION;
    invalid_number EXCEPTION;
    pragma exception_init (invalid_number,-6502);
BEGIN
    v_id := &id_empleado; 
    v_ape := &apellido;
    v_nom := &nombre;
    v_mail := &email;
    v_hd := &hire_date;
    v_job := &jobid;
    v_sueldo := &salario;
    v_manag := &id_manager;
    v_dep := &id_departamento;
    
    
    select count(department_id) into cuenta from employees where employee_id = v_id;
    select count(manager_id) into cuenta2 from employees where employee_id = v_id;
    select count(employee_id) into cuenta3 from employees where employee_id = v_id;
    
    if cuenta = 0 then
        raise no_dep;
    end if;    
    if cuenta2 = 0 then
        raise no_manag;
    end if;
    if cuenta3 >= 1 then
        raise empnum_dup;
    end if;
    if v_sueldo is null then
        raise_aplication_error(-27344,'Salario invalido');
    end if;
    if instr(v_nom,' ') != 0 or instr(v_ape,' ') != 0 then
        raise contiene_espacio;
    end if;
    if instr(v_mail,'@') = 0 or instr(v_mail,'.') = 0 or length(v_mail) < 10 then
        raise invalid_mail;
    end if;
    if extract(year from v_hd) < 2000 or extract(year from v_hd) > sysdate then
        raise invalid_date;
    end if;
    select avg(salary) into average from employees;
    if v_sueldo > (average * (2/3)) then
        raise invalid_salary;
    end if;
    
    insert into employees (employee_id, first_name, last_name, email, hire_date, job_id, salary, manager_id, department_id)
    values (v_id, v_nom, v_ape, v_mail, v_hd, v_job, v_sueldo, v_manag, v_dep);
    
    DBMS_OUTPUT.PUT_LINE('El empleado con id='||v_id||' se llama '||v_nom||'
    '||v_ape||' y cobre '||v_sueldo);
EXCEPTION
    when no_dep then
    DBMS_OUTPUT.PUT_LINE('No existe departamento');
    
    when no_manag then
    DBMS_OUTPUT.PUT_LINE('No existe manager');
    
    when empnum_dup then
    DBMS_OUTPUT.PUT_LINE('Numero de empleado tuplicado');
    
    when contiene_espacio then
    DBMS_OUTPUT.PUT_LINE('El nombre o apellido contiene espacios');
    
    when invalid_mail then
    DBMS_OUTPUT.PUT_LINE('Email invalido');
    
    when invalid_date then
    DBMS_OUTPUT.PUT_LINE('El año de la fecha es invalido');
    
    when invalid_salary then
    DBMS_OUTPUT.PUT_LINE('Salario invalido');
    
    when invalid_number then
    DBMS_OUTPUT.PUT_LINE('Numero invalido');
    
    when others then dbms_output.put_line('Error: '||SQLCODE||' Mensaje: '||SQLERRM);
END;
