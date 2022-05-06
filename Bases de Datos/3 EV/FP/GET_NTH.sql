create or replace FUNCTION get_nth(lista VARCHAR2, delimiter VARCHAR2, pos INTEGER)
    RETURN VARCHAR2
    IS
    contador   INTEGER;
    delFirsPos INTEGER;
    delLastPos INTEGER;
    fueraRango EXCEPTION;
BEGIN
    if LIST_SIZE(lista) < pos or pos < 1 then
        raise fueraRango;
    end if;
    contador := 1;
    delLastPos := 0;
    loop
        if substr(lista, contador, 1) = delimiter then
            delLastPos := delLastPos + 1;
            if delLastPos = pos then
                delFirsPos := contador;
            else
                if contador > delFirsPos then
                    return substr(lista, delFirsPos, contador-1);
                end if;
            end if;
            contador := contador + 1;
        end if;
    end loop;

END get_nth;