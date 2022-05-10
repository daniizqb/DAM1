create or replace FUNCTION add_item(lista VARCHAR2, delimiter VARCHAR2, str VARCHAR2)
    RETURN VARCHAR2
    IS
    contador INTEGER;
    posi INTEGER;
BEGIN
    if LIST_SIZE(lista) = 1 then
        return str;
    end if;
    contador := 1;
    posi := 1;
    loop
        if substr(lista, contador, 1) = delimiter then
            return str || delimiter || substr(lista, 1, length(lista));
        end if;
        contador := contador + 1;
    end loop;
END add_item;