-- Ej4
-- Daniel Izquierdo Bonilla
create or replace function CUBO(numero float) return varchar2
    is
    num_max exception;
begin
    if numero > 1000 then
        raise num_max;
    end if;
    return numero * numero * numero;

exception
    when num_max then return 'Se ha producido un error, el numero no puede ser mayor de 1000';
end;