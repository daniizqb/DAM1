-- Ej4
-- Daniel Izquierdo Bonilla
create or replace function INVIERTE(texto VARCHAR2) return varchar2
    is
    cuenta INTEGER;
    aux    VARCHAR2(100);
begin
    aux := '';
    cuenta := length(texto);

    loop
        aux := aux || substr(texto, cuenta, 1);
        cuenta := cuenta - 1;
        if cuenta = 0 then
            return aux;
        end if;
    end loop;
end;