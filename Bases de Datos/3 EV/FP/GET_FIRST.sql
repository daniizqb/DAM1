create or replace FUNCTION get_first(lista VARCHAR2)
    RETURN VARCHAR2
    IS
    contador INTEGER;
BEGIN
    if LIST_SIZE(lista) = 1 then
        return lista;
    end if;
    contador := 1;
    loop
        if substr(lista, contador, 1) = '#' then
            return substr(lista, 1, contador - 1);
        end if;
        contador := contador + 1;
    end loop;
END get_first;