CREATE OR REPLACE TRIGGER audit_cambios
    BEFORE INSERT OR UPDATE
    ON employees
    FOR EACH ROW
BEGIN
    if inserting then
        insert INTO CONTROL
        VALUES (FIRST_NAME, LAST_NAME, 'Nuevo Empleado', null, null);
    elsif updating('job_id') then
        insert INTO CONTROL
        VALUES (FIRST_NAME, LAST_NAME, 'Cambio trabajo', :old.JOB_ID, :new.JOB_ID);
    elsif updating('department_id') then
        insert INTO CONTROL
        VALUES (FIRST_NAME, LAST_NAME, 'Cambio departamento', :old.DEPARTMENT_ID, :new.DEPARTMENT_ID);
    end if;
END;