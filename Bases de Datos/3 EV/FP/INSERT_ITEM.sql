create or replace FUNCTION insert_item(lista VARCHAR2, delimiter VARCHAR2, str VARCHAR2, pos INTEGER)
    RETURN VARCHAR2
    IS
    contador INTEGER;
    posi INTEGER;
BEGIN
    if LIST_SIZE(lista) = 1 then
        return str;
    end if;
    if pos = 1 then
        return str || delimiter || substr(lista,1,length(lista));
    end if;
    contador := 1;
    posi := 2;
    loop
        if substr(lista, contador, 1) = delimiter then
            if pos = posi then
                return substr(lista, 1, contador) || str || substr(lista, contador, length(lista));
            end if;
            posi := posi + 1;
        end if;
        contador := contador + 1;
    end loop;
END insert_item;