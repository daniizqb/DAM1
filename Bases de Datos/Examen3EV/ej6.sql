-- Ej6
-- Daniel Izquierdo Bonilla
CREATE TABLE LOGGING
(
    NOMBRE      VARCHAR2(100),
    APELLIDO    VARCHAR2(100),
    TIPO_CAMBIO VARCHAR2(100),
    ANTIGUO     VARCHAR2(100),
    NUEVO       VARCHAR2(100)
);

CREATE OR REPLACE TRIGGER CONTROL_CAMBIOS
    BEFORE UPDATE
    ON EMPLOYEES
    FOR EACH ROW
BEGIN
    IF UPDATING ('SALARY') THEN
        IF :new.SALARY > :old.SALARY * 1.2 THEN
            INSERT INTO LOGGING VALUES (:new.FIRST_NAME, :new.LAST_NAME, 'Aumento excesivo salario', :old.SALARY, :new.SALARY);
        end if;
    end if;

    IF UPDATING ('EMAIL') THEN
        INSERT INTO LOGGING
        VALUES (:new.FIRST_NAME, :new.LAST_NAME, 'Cambio email', :old.EMAIL, :new.EMAIL);
    END IF;
END;