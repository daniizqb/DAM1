-- Ej3
-- Daniel Izquierdo Bonilla
set serveroutput on
declare
    letra char;
    nom   employees.first_name%type;
    ape   employees.last_name%type;
    job   jobs.job_title%type;
    mails employees.email%type;
    cursor c_ej is select first_name, last_name, job_title, email
                   from employees
                            join jobs on employees.job_id = jobs.job_id
                   where substr(email, 1, 1) = letra;
begin
    letra := '&dime_letra';
    letra := UPPER(letra);

    open c_ej;
    fetch c_ej into nom, ape, job, mails;
    while c_ej%found
        loop
            dbms_output.put_line('Nombre: ' || nom || ' Apellido: ' || ape || ' Trabajo: ' || job ||
                                 ' Email: ' || mails);
            fetch c_ej into nom, ape, job, mails;
        end loop;
    close c_ej;
end;
