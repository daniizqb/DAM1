SET SERVEROUTPUT ON

DECLARE
    v_id employees.employee_id%TYPE;
    v_ape employees.last_name%TYPE;
    v_nom employees.first_name%TYPE;
    v_mail employees.email%TYPE;
    v_tlf employees.phone_number%TYPE;
    v_hd employees.hire_date%TYPE;
    v_job employees.job_id%TYPE;
    v_sueldo employees.salary%TYPE;
    v_manag employees.manager_id%TYPE;
    v_dep employees.department_id%TYPE;
    cuenta INTEGER;
    
    e_jefe EXCEPTION;
BEGIN
    v_id := &id_empleado; 
    v_ape := &apellido;
    v_nom := &nombre;
    v_mail := &email;
    v_tlf := &telefono;
    v_hd := &hire_date;
    v_job := &jobid;
    v_sueldo := &salario;
    v_manag := &id_manager;
    v_dep := &id_departamento;
    
    INSERT INTO employees VALUES ();
    
    if v_id = 100 then
        raise e_jefe;
    end if;    
    
    select first_name, last_name, salary into v_nom, v_ape, v_sueldo 
    from employees where employee_id = v_id;
    
    DBMS_OUTPUT.PUT_LINE('El empleado con id='||v_id||' se llama '||v_nom||'
    '||v_ape||' y cobre '||v_sueldo);
EXCEPTION
    when e_jefe then
    DBMS_OUTPUT.PUT_LINE('No puedes consultar el sueldo del jefe');

    when no_data_found then
    DBMS_OUTPUT.PUT_LINE('El empleado con id='||v_id||' NO EXISTE');
END;
