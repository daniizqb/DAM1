create or replace FUNCTION insert_item(lista VARCHAR2, delimiter VARCHAR2, str VARCHAR2)
    RETURN VARCHAR2
    IS
    contador INTEGER;
BEGIN
    if LIST_SIZE(lista) = 1 then
        return str;
    end if;
    contador := 1;
    loop
        if substr(lista, contador, 1) = delimiter then
            return substr(lista, 1, contador) || str || substr(lista, contador, length(lista));
        end if;
        contador := contador + 1;
    end loop;

END insert_item;