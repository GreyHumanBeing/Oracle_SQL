select city 
       from locations
           where state_province is null;   

select first_name || ' ' || last_name  as "Nombre Completo",
       salary as "Salario", 
       commission_pct as "Comision", 
       salary + (salary*commission_pct/100) as "Sueldo Total" 
           from employees 
               where commission_pct is not null;
--Estudiar el calculo del "Sueldo Total"
--El punto es que el porcentaje de la comision es por ejemplo en la query siguiente 0.2%
select 100*0.2/100 from dual;
--Entonces si multiplicamos el sueldo por 0.2, nos da un 20% del sueldo , por eso se divide sobre 100