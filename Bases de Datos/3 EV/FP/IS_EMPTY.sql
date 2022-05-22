-- Daniel Izquierdo Bonilla
create or replace FUNCTION IS_EMPTY(lista VARCHAR2)
    RETURN Boolean
    IS
    emp boolean;
BEGIN
    emp := false;
    if LIST_SIZE(lista) = 0 then
        emp := true;
    end if;
    RETURN emp;
END IS_EMPTY;