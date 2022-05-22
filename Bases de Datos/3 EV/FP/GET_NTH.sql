create or replace FUNCTION get_nth(lista in out VARCHAR2, delimiter VARCHAR2, pos INTEGER)
    RETURN VARCHAR2
    IS
    contador INTEGER;
    posi     INTEGER;
BEGIN
    if LIST_SIZE(lista) < pos or pos < 1 then
        return 'Lista invalida';
    end if;
    if pos = 1 then
        return GET_FIRST(lista);
    end if;
    contador := 1;
    posi := 1;
    loop
        if substr(lista, contador, 1) = delimiter then
            if pos = posi then
                return substr(lista, 1, contador - 1);
            end if;
            lista := substr(lista, contador + 1, length(lista));
            posi := posi + 1;
            contador := 1;
        end if;
        contador := contador + 1;
    end loop;

END get_nth;