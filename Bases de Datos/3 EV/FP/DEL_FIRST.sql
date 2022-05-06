create or replace FUNCTION del_first(lista VARCHAR2, delimiter VARCHAR2)
    RETURN VARCHAR2
    IS
    contador INTEGER;
BEGIN
    if LIST_SIZE(lista) = 1 then
        return '';
    end if;
    contador := 1;
    loop
        if substr(lista, contador, 1) = delimiter then
            return substr(lista, contador, length(lista));
        end if;
        contador := contador + 1;
    end loop;
END del_first;