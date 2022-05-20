-- Ej4
-- Daniel Izquierdo Bonilla
create or replace function TRIANGULO(lado1 INTEGER, lado2 INTEGER, lado3 INTEGER) return varchar2
    is
    lado_invalido exception;
begin
    if (lado1 + lado2) < lado3 or (lado3 + lado2) < lado1 or (lado1 + lado3) < lado2 then
        raise lado_invalido;
    end if;

    if lado1 = lado2 and lado1 = lado3 then
        return 'Es Equilatero';
    elsif lado1 = lado2 or lado1 = lado3 or lado2 = lado3 then
        return 'Es Isosceles';
    end if;

    return 'Es Escaleno';
exception
    when lado_invalido then return 'ERROR';
end;