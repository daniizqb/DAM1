create or replace FUNCTION list_size(lista VARCHAR2)
    RETURN INTEGER
    IS
    longitud INTEGER;
    contador INTEGER;
BEGIN
    if lista IS NULL then
        return 0;
    end if;
    longitud := length(lista);
    contador := 1;
    for i in 1..longitud
        loop
            if substr(lista, i, 1) = '#' then
                contador := contador + 1;
            end if;
        end loop;

    RETURN contador;
END list_size;