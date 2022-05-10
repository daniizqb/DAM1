create or replace PROCEDURE PROC1(lista out VARCHAR2)
    IS
    v_cname    COUNTRIES.COUNTRY_NAME%type;
    CURSOR c_co is select COUNTRY_NAME
                   from COUNTRIES
                   order by COUNTRY_ID desc;
BEGIN
    OPEN c_co;
    LOOP
        FETCH c_co into v_cname;
        EXIT WHEN c_co%notfound;
        lista := INSERT_ITEM(lista,'#',v_cname,1);
    END LOOP;
    CLOSE c_co;
END;