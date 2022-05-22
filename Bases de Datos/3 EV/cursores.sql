SET SERVEROUTPUT ON
DECLARE
v_idregion countries.region_id%type;
CURSOR c_paises is select country_name,region_id from countries;
--registro c_paises%rowtype;

BEGIN
OPEN c_paises;

LOOP
    FETCH c_paises into nom_pais,region;
    EXIT WHEN c_paises%notfound;
    DBMS_OUTPUT.PUT_LINE('Pais: '||nom_pais||' Region: '||region);
END LOOP;

WHILE c_paises%found
LOOP
    DBMS_OUTPUT.PUT_LINE('Pais: '||nom_pais||' Region: '||region);
    FETCH c_paises into nom_pais,region;
END LOOP;

FOR registro IN 
(SELECT country_name, region_id from countries where region_id=v_idregion)
LOOP
    DBMS_OUTPUT.PUT_LINE(registro.country_name);
END LOOP;
CLOSE c_paises;
END;